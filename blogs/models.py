from django.db import models
from tinymce import models as tinymce_models
from django.contrib.auth.models import User
# Create your models here.


class Blogpost(models.Model):
	title = models.CharField(max_length = 100)
	name = models.CharField(max_length = 50,blank = True)
	email = models.EmailField()
	body = models.TextField(max_length = 1000)
	created = models.DateTimeField('%Y-%m-%d %H:%M:%S',auto_now_add=True)
	user_id=models.ForeignKey(User)
	
	def __unicode__(self):
		return unicode("%s: %s" % (self.title, self.body[:60]))
	
class Comment(models.Model):
	name=models.CharField(max_length = 100)
	email=models.EmailField()
	created = models.DateTimeField('%Y-%m-%d %H:%M:%S',auto_now_add=True)
	body = models.TextField(max_length = 200)
	post = models.ForeignKey(Blogpost)

	def __unicode__(self):
		return unicode("%s: %s" % (self.post, self.body[:60]))

