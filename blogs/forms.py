from django.db import 
from tinymce import models as tinymce_models
from django.forms import ModelForm
from django import forms
from blogs.models import *
# Create your models here.


class BlogpostForm(ModelForm):
	title = forms.CharField(max_length = 100)
	name = forms.CharField(max_length = 50)
	email = forms.EmailField(max_length = 50)
	body = forms.TextField(max_length = 1000)
	
class CommentForm(ModelForm):
	name=forms.CharField(max_length = 100)
	body = forms.TextField(max_length = 200)
	email= forms.EmailField()
