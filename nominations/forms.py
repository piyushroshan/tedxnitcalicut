from django.forms import ModelForm
import re

from django.forms.fields import CharField
from django.core.validators import EMPTY_VALUES
from django.forms import ValidationError
from django import forms
from nominations.models import nominee
from tinymce import models as tinymce_models
phone_digits = re.compile(r'^[0-9]+$')
class NominationForm(ModelForm):
	default_error_messages = {
		'invalid': u'Phone numbers must be in 0XXXXXXXXX e.g. 09999912345',
		}
	class Meta:
		model = nominee
		exclude = ['slug']

		def clean_phone(self):
			value=self.cleaned_data['phone']
			match = phone_digits.match(value)
			if match:
				return value
			raise forms.ValidationError(u'Phone Number contains special characters')

		def clean_nominator_phone(self):
			value=self.cleaned_data['nominator_phone']
			match = phone_digits.match(value)
			if match:
				return value
			raise forms.ValidationError(u'Phone Number contains special characters')


