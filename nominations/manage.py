from django.http import *
from django.shortcuts import render_to_response
from django.template.loader import get_template
from django.template import RequestContext
from django.forms import ModelForm
from nominations.models import *
from nominations.forms import *
from django.contrib.auth.decorators import login_required

@login_required (login_url='/accounts/login/')
def nominated(request):
	if request.method == 'POST':
		nomine=nominee(nominator=request.user)
		form = NominationForm(request.POST,instance=nomine)
		if form.is_valid():
			nomine=form.save(commit = False)
			nomine.nominator=request.user
			nomine.save()
			return HttpResponse("Thank you")



