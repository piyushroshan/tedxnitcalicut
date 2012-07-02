from django.forms import ModelForm
from django import forms
from nominations.models import nominee
class NominationForm(ModelForm):
	class Meta:
		model = nominee
		exclude = ['nominator']
