from django.db import models
from django.contrib.auth.models import User
from django.template.defaultfilters import slugify
# Create your models here.

class nominee(models.Model):
	fname = models.CharField(max_length = 30)
	lname = models.CharField(max_length = 30)
	email = models.EmailField()
	phone = models.CharField(max_length = 25, blank = True)
	description = models.TextField(max_length = 750)
	support = models.TextField(max_length = 750)
	reference1 = models.URLField(blank=True)
	reference2 = models.URLField(blank=True)
	nominator = models.ForeignKey(User,related_name='+',blank = True, null=True, on_delete=models.SET_NULL)
	slug = models.SlugField(blank=True)

	def save(self):
		if not self.id:
			self.slug = slugify(self.fname)
			super(nominee, self).save()
