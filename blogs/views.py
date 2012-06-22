#Create your views here.
from django.http import *
from django.shortcuts import render_to_response
from django.core.paginator import Paginator, InvalidPage, EmptyPage
from django.core.urlresolvers import reverse
from django.template.loader import get_template
from django.template import RequestContext

from django.forms import ModelForm
from blogs.models import *

def list(request):
    """Main listing."""
    posts = Blogpost.objects.all().order_by("-created")
    paginator = Paginator(posts, 2)

    try: page = int(request.GET.get("page", '1'))
    except ValueError: page = 1

    try:
        posts = paginator.page(page)
    except (InvalidPage, EmptyPage):
        posts = paginator.page(paginator.num_pages)
    
    t=get_template("list.html")
    c=RequestContext(request, {'posts':posts, 'user':request.user})
    html=t.render(c)
    return HttpResponse(html)


def post(request, pk):
    """Single post with comments and a comment form."""
    post = Blogpost.objects.get(pk=int(pk))
    t=get_template('post.html')
    c = RequestContext(request, {'post':post, 'user':request.user})
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
