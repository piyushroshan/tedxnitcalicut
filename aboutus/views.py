# Create your views here.
from django.shortcuts import render_to_response
from django.http import HttpResponse
from django.template.loader import get_template
from django.template import *
def about_us(request):
        t = get_template('aboutus.html')
        c = RequestContext(request,{'time':'14 January'})
	http = t.render(c)
	return HttpResponse(http)

