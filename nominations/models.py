from django.db import models
from django.contrib.auth.models import User
from django.template.defaultfilters import slugify
import datetime
from registration.models import UserProfile
from tinymce import models as tinymce_models
# Create your models here.

class nominee(models.Model):
    fullname = models.CharField(max_length = 128)
    email = models.EmailField(max_length = 128)
    phone = models.CharField(max_length = 25, blank = True)
    description = models.TextField(max_length = 750)
    support = models.TextField(max_length = 750)
    reference1 = models.TextField(max_length = 500, blank=True)
    nominator = models.ForeignKey(User,related_name='+',blank = True, null=True, on_delete=models.SET_NULL)
    slug = models.SlugField(blank=True)
    nominated_on = models.DateTimeField('%Y-%m-%d %H:%M:%S',auto_now_add=True)

    def save(self):
        date = datetime.datetime.today()
	if not self.id:
            self.slug = slugify("%s-%s"% (date , self.email))
            super(nominee, self).save()

    def __unicode__(self):
        	return unicode("%s: %s" % (self.fullname, self.email))
