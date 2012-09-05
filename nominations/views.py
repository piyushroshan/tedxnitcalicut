# Create your views here.
from django.http import *
from django.shortcuts import render_to_response
from django.template.loader import get_template
from django.template import RequestContext
from django.forms import ModelForm
from nominations.models import *
from nominations.forms import *
from django.contrib.auth.decorators import login_required



def nominater(request):
	t=get_template('nominations/nomination.html')
	if request.user.is_authenticated():
		form = NominationFormAuth()
	else:
		form = NominationForm()
	c=RequestContext(request,{'form':form})
	html = t.render(c)
	return HttpResponse(html)



def nominator_view(request):
	nominees =nominee.objects.all()
	t=get_template('nominations/view_nominations.html')
	c=RequestContext(request,{'nominees':nominees})
	html = t.render(c)
	return HttpResponse(html)

