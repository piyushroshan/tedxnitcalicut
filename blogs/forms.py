from django.forms import ModelForm
from django import forms
from blogs.models import *
from recaptchawidget.fields import ReCaptchaField 
# Create your models here.


class BlogpostForm(ModelForm):
	class Meta:
		model = Blogpost
		exclude = ['name',]
	
class CommentForm(ModelForm):
	recaptcha = ReCaptchaField()
	class Meta:
		model = Comment
		exclude = ["post",]
		
	
class CommentFormAuth(ModelForm):
	class Meta:
		model = Comment
		exclude = ["post",]