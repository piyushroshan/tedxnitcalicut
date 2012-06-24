from django.db import models

# Create your models here.


class Blogpost(models.Model):
	title = models.CharField(max_length = 100)
	name = models.CharField(max_length = 50)
        email = models.EmailField()
        body = models.TextField()
	created = models.DateTimeField('%Y-%m-%d %H:%M:%S',auto_now_add=True)

class Comment(models.Model):
        name=models.CharField(max_length = 50)
        created = models.DateTimeField(auto_now_add=True)
        body = models.TextField()
        post = models.ForeignKey(Blogpost)
def __unicode__(self):
        return unicode("%s: %s" % (self.post, self.body[:60]))

