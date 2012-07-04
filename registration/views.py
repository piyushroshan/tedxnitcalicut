"""
Views which allow users to create and activate accounts.

"""
from django.template.loader import get_template
from django.conf import settings
from django.http import *
from django.shortcuts import render_to_response
from django.template import RequestContext
from models import RegistrationProfile
from forms import RegistrationForm

def activate(request, activation_key):
	"""
	Activates a user's account, if their key is valid and hasn't
	expired.

	Context::
	    account
	      The ``User`` object corresponding to the account,
	      if the activation was successful.

	    expiration_days
	      The number of days for which activation keys stay valid.

	Template::
	    registration/activate.html

	"""
	activation_key = activation_key.lower() # Normalize before trying anything with it.
	account = RegistrationProfile.objects.activate_user(activation_key)
	t = get_template('registration/activate.html')
	c = RequestContext(request,{'account': account,'expiration_days':settings.ACCOUNT_ACTIVATION_DAYS ,})
	html=t.render(c)
	return HttpResponse(html)

def register(request, success_url='/accounts/register/complete/'):
	"""
	Allows a new user to register an account.

	On successful registration, an email will be sent to the new user
	with an activation link to click to make the account active. This
	view will then redirect to ``success_url``, which defaults to
	'/accounts/register/complete/'. This application has a URL pattern
	for that URL and routes it to the ``direct_to_template`` generic
	view to display a short message telling the user to check their
	email for the account activation link.

	Context::
		  form
		    The registration form

	Template::
	    registration/registration_form.html

	"""
	if request.method == 'POST':
	      form = RegistrationForm(request.POST)
	      if form.is_valid():
		      new_user = RegistrationProfile.objects.create_inactive_user(username=form.cleaned_data['username'],
				      password=form.cleaned_data['password1'],
				      fname=form.cleaned_data['fname'],
				      lname=form.cleaned_data['lname'],
				      email=form.cleaned_data['email'])
		      return HttpResponseRedirect(success_url)
	else:
	      form = RegistrationForm()
	t = get_template('registration/registration_form.html')
	c = RequestContext(request,{ 'form': form ,})
	html = t.render(c)
	return HttpResponse(html)

