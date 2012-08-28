from django.http import *
from django.shortcuts import render_to_response
from django.template.loader import get_template
from django.template import RequestContext
from django.forms import ModelForm
from nominations.models import *
from nominations.forms import *
from django.contrib.auth.decorators import login_required
from django.core.urlresolvers import reverse

def nominated(request):
    if request.method == 'POST':
        form = NominationForm(request.POST)
        if form.is_valid():
            nomine=form.save(commit = False)
            nomine.save()
            return HttpResponseRedirect(reverse("nominations.views.nominator_view"))
