from django.forms import ModelForm
from django import forms
from nominations.models import nominee
from tinymce import models as tinymce_models
from registration.models import UserProfile
class NominationForm(ModelForm):
	class Meta:
		model = nominee
		exclude = ['nominator','slug']