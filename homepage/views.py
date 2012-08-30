# Create your views here.
from django.http import *
from django.shortcuts import render_to_response
from django.template.loader import get_template
from django.core.paginator import Paginator, InvalidPage, EmptyPage
from django.core.urlresolvers import reverse
from django.template import RequestContext
from blogs.models import Blogpost
def main(request):
	post = Blogpost.objects.latest('created')
	t=get_template('home.html')
	c=RequestContext(request, {'post': post})
	html=t.render(c)
	return HttpResponse(html)
