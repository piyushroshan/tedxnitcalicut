from django.db import 
from tinymce import models as tinymce_models
from django.forms import ModelForm
from django import forms
from blogs.models import *
# Create your models here.


class BlogpostForm(ModelForm):
	class Meta:
		model = Blogpost
		exclude = ['name',]
	
class CommentForm(ModelForm):
	name=forms.CharField(max_length = 100)
	body = forms.TextField(max_length = 200)
	email= forms.EmailField()
