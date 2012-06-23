# Create your views here.
from django.shortcuts import render_to_response
from django.http import HttpResponse
from django.template.loader import get_template
from django.template import *
def abouttedxnitcalicut(request):
        t = get_template('abouttedxnitcalicut.html')
        c = RequestContext(request,{'time':'14 January'})
	http = t.render(c)
	return HttpResponse(http)

def abouttedx(request):
        t = get_template('abouttedx.html')
        c = RequestContext(request,{})
        http = t.render(c)  
        return HttpResponse(http)

def aboutted(request):
        t = get_template('aboutted.html')
        c = RequestContext(request,{})
        http = t.render(c)  
        return HttpResponse(http)

