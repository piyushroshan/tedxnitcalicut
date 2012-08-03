from nominations.models import *
from voting.views import vote_on_object
from django.conf.urls import patterns, include, url
from django.conf.urls.defaults import *

nominations_dict = {
		'model': nominee,
		'slug_field':'slug',
		'allow_xmlhttprequest':'true',
		}

urlpatterns = patterns('',
		   url(r'^(?P<slug>[-\w]+)/(?P<direction>up|down|clear)vote/?$', vote_on_object, nominations_dict),
		   )
