# Create your views here.
from django.http import *
from django.shortcuts import render_to_response
from django.template.loader import get_template
from django.template import RequestContext
from django.forms import ModelForm
from nominations.models import *
from nominations.forms import *
def nominater(request):
	t=get_template('nomination.html')
	c=RequestContext(request,{'form':NominationForm()})
	html = t.render(c)
	return HttpResponse(html)



