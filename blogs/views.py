#Create your views here.
maxpost = 5
from django.http import *
from django.shortcuts import render_to_response
from django.core.paginator import Paginator, InvalidPage, EmptyPage
from django.core.urlresolvers import reverse
from django.template.loader import get_template
from django.template import RequestContext
from blogs.models import *
from blogs.forms import *
from django.contrib.auth.models import User


def list(request):
	"""Main listing."""
	posts = Blogpost.objects.all().order_by("-created")
	paginator = Paginator(posts, maxpost )
	try:
		 page = int(request.GET.get("page", '1'))
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
	u_name=u_id.get_full_name()
	paginator = Paginator(posts, maxpost)
	try: 
		page = int(request.GET.get("page", '1'))
	except ValueError: page = 1
	try:
		posts = paginator.page(page)
	except (InvalidPage, EmptyPage):
		posts = paginator.page(paginator.num_pages)
	t=get_template("blogs/list_user.html")
	c=RequestContext(request, {'posts':posts,'u_name': u_name,})
	html=t.render(c)
	return HttpResponse(html)

def post(request, pk):
	"""Single post with comments and a comment form."""
	if request.method == 'POST':
		comment = Comment(post=Blogpost.objects.get(pk=pk))
		form = CommentForm(request.POST, instance=comment)
		if form.is_valid():
			form.save();
			return HttpResponseRedirect(reverse("blogs.views.post", args=[pk]))
		else:
			post = Blogpost.objects.get(pk = int(pk))
			comments = Comment.objects.filter(post=post)
			t=get_template('blogs/post.html')
			c = RequestContext(request, {'post':post, 'comments' : comments, 'form':form })
			html= t.render(c)
			return HttpResponse(html)
	else:
		post = Blogpost.objects.get(pk = int(pk))
		comments = Comment.objects.filter(post=post)
		t=get_template('blogs/post.html')
		if request.user.is_authenticated():
			form = CommentFormAuth(initial = { 'name' : request.user.get_full_name(), 'email':request.user.email })
		else:
			form = CommentForm()
		c = RequestContext(request, {'post':post, 'comments' : comments, 'form':form })
		html= t.render(c)
		return HttpResponse(html)

