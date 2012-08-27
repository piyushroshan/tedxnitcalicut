#Create your views here.
maxpost = 3
from django.http import *
from django.shortcuts import render_to_response
from django.core.paginator import Paginator, InvalidPage, EmptyPage
from django.core.urlresolvers import reverse
from django.template.loader import get_template
from django.template import RequestContext
from django.contrib.auth.decorators import login_required
from django.forms import ModelForm
from blogs.models import *
from django.contrib.auth.models import User
def list(request):
	"""Main listing."""
	posts = Blogpost.objects.all().order_by("-created")
	paginator = Paginator(posts, maxpost )

	try: page = int(request.GET.get("page", '1'))
	except ValueError: page = 1

	try:
		posts = paginator.page(page)
	except (InvalidPage, EmptyPage):
		posts = paginator.page(paginator.num_pages)

	t=get_template("blogs/list.html")
	c=RequestContext(request, {'posts':posts})
	html=t.render(c)
	return HttpResponse(html)
	
	
def list_user(request, uid):
	"""Main listing."""
	u_id = User.objects.get(username = uid)
	posts = Blogpost.objects.filter(user_id = u_id)
	paginator = Paginator(posts, maxpost)
	
	try: page = int(request.GET.get("page", '1'))
	except ValueError: page = 1
	
	try:
		posts = paginator.page(page)
	except (InvalidPage, EmptyPage):
		posts = paginator.page(paginator.num_pages)
		
	t=get_template("blogs/list_user.html")
	c=RequestContext(request, {'posts':posts})
	html=t.render(c)
	return HttpResponse(html)

def post(request, pk):
	"""Single post with comments and a comment form."""
	post = Blogpost.objects.get(pk=int(pk))
	comments = Comment.objects.filter(post=post)
	t=get_template('blogs/post.html')
	if request.user.is_authenticated():
		c = RequestContext(request, {'post':post, 'comments' : comments, 'form':CommentForm(initial = { 'name' : request.user.get_full_name(), 'email':request.user.email })})
	else:
		c = RequestContext(request, {'post':post, 'comments' : comments, 'form':CommentForm(initial = { 'name' : "", 'email':"" })})
	html= t.render(c)
	return HttpResponse(html)



class CommentForm(ModelForm):
	class Meta:
		model = Comment
		exclude = ["post"]



def add_comment(request, pk):
	"""Add a new comment."""
	p = request.POST

	if p.has_key("body") and p["body"]:
		name = "Anonymous"
		if p["name"]: name = p["name"]

		comment = Comment(post=Blogpost.objects.get(pk=pk))
		cf = CommentForm(p, instance=comment)
		cf.fields["name"].required = False

		comment = cf.save(commit=False)
		comment.name = name
		comment.save()
	return HttpResponseRedirect(reverse("blogs.views.post", args=[pk]))
