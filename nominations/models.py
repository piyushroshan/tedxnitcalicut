from django.db import models
from django.template.defaultfilters import slugify
import datetime
from tinymce import models as tinymce_models
# Create your models here.

class nominee(models.Model):
	fullname = models.CharField(max_length = 128)
	email = models.EmailField(max_length = 128)
	phone = models.CharField(max_length = 25, blank = True)
	description = models.TextField(max_length = 750)
	support = models.TextField(max_length = 750)
	reference1 = models.TextField(max_length = 500, blank=True)
	slug = models.SlugField(blank=True)
	nominated_on = models.DateTimeField('%Y-%m-%d %H:%M:%S',auto_now_add=True)
	nominator_phone = models.CharField(max_length = 25)
	nominator_email = models.EmailField(max_length = 128)
	nominator_name = models.CharField(max_length = 128)

	def save(self):
		date = datetime.datetime.today()
		if not self.id:
			self.slug = slugify("%s-%s"% (date , self.email))
			super(nominee, self).save()

	def __unicode__(self):
			return unicode("%s: %s" % (self.fullname, self.email))
