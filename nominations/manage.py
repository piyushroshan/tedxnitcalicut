from django.http import *
from django.shortcuts import render_to_response
from django.template.loader import get_template
from django.template import RequestContext
from django.forms import ModelForm
from nominations.models import *
from nominations.forms import *

def nominated(request):
	if request.method == 'POST':
		form = NominationForm(request.POST)
		form.nominater = request.user
		form.save(commit = False)
		form.nominator=request.user.pk
		form.save()
		return HttpResponse("Thank you")



