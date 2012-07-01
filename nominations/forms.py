from django.forms import ModelForm
from django import forms
from nominations.models import nominee
class NominationForm(ModelForm):
	class Meta:
		model = nominee
		'''widgets = { 'nominator': forms.HiddenInput()}'''
'''
class NominationForm(forms.Form):
	fname=forms.CharField(max_length = 30 , label = u'First Name')
        lname = forms.CharField(max_length = 30,label = u'Last Name') 
	email = forms.EmailField(label = u'Email' )
	phone = forms.CharField(max_length = 25,label = u'Phone')
	description = forms.TextField(max_length = 750,label = u'Describe about the nominee..')
	support = forms.TextField(max_length = 750,label = u'Why this person fit for our event???')
	reference1 = forms.URLField(blank=True,label = u'Reference URL1')
	reference2 = forms.URLField(blank=True,label = u'Reference URL2')
	nominator = forms.ForeignKey(User,label = u'Nominator')

'''
