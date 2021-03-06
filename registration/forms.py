"""
Form and validation code for user registration.

"""
from django.forms import ModelForm
from django import forms
from django.contrib.auth.models import User

# I put this on all required fields, because it's easier to pick up
# on them with CSS or JavaScript if they have a class of "required"
# in the HTML. Your mileage may vary.
attrs_dict = { 'class': 'required' }

class RegistrationForm(forms.Form):
	"""
	Form for registering a new user account.

	Validates that the password is entered twice and matches,
	and that the username is not already taken.

	"""
	username = forms.CharField(max_length=30,
							widget=forms.TextInput(attrs=attrs_dict),
							label=u'Username')
	email = forms.EmailField(widget=forms.TextInput(attrs=dict(attrs_dict,
															max_length=200)),
							label=u'Email address')
	fname = forms.CharField(max_length=30, label=u'First Name')
	lname = forms.CharField(max_length=30, label=u'Last Name')
	password1 = forms.CharField(widget=forms.PasswordInput(attrs=attrs_dict),
								label=u'Password')
	password2 = forms.CharField(widget=forms.PasswordInput(attrs=attrs_dict),
								label=u'Password (again, to catch typos)')
	tos = forms.BooleanField(widget=forms.CheckboxInput(attrs=attrs_dict),
							label=u'I have read and agree to the Terms of Service')

	def clean_username(self):
		"""
		Validates that the username is not already in use.

		"""
		if self.cleaned_data.get('username', None):
			try:
				user = User.objects.get(username__exact=self.cleaned_data['username'])
			except User.DoesNotExist:
				return self.cleaned_data['username']
			raise forms.ValidationError(u'The username "%s" is already taken. Please choose another.' % self.cleaned_data['username'])
	def clean_email(self):
		"""
		Validates that the email is not already in use.

		"""
		if self.cleaned_data.get('email', None):
			try:
				user = User.objects.get(username__exact=self.cleaned_data['email'])
			except User.DoesNotExist:
				return self.cleaned_data['email']
			raise forms.ValidationError(u'The email "%s" is already taken. Please choose another.' % self.cleaned_data['email'])

	def clean_password2(self):
		"""
		Validates that the two password inputs match.

		"""
		if self.cleaned_data.get('password1', None) and self.cleaned_data.get('password2', None) and \
		self.cleaned_data['password1'] == self.cleaned_data['password2']:
			return self.cleaned_data['password2']
		raise forms.ValidationError(u'You must type the same password each time')


	def clean_tos(self):
		"""
		Validates that the user accepted the Terms of Service.

		"""
		if self.cleaned_data.get('tos', False):
			return self.cleaned_data['tos']
		raise forms.ValidationError(u'You must agree to the terms to register')



