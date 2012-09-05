"""
URLConf for Django user registration.

Recommended usage is to use a call to ``include()`` in your project's
root URLConf to include this URLConf for any URL begninning with
'/accounts/'.

"""

from django.conf.urls.defaults import *
from django.views.generic import TemplateView
from django.contrib.auth.views import *
from views import activate, register

urlpatterns = patterns('',
					# Activation keys get matched by \w+ instead of the more specific
					# [a-fA-F0-9]+ because a bad activation key should still get to the view;
					# that way it can return a sensible "invalid key" message instead of a
					# confusing 404.
					#(r'^activate/(?P<activation_key>\w+)/$', activate),
					(r'^login/$', login, {'template_name': 'registration/login.html'}),
					(r'^logout/$', logout, {'template_name': 'registration/logout.html'}),
					)
"""#(r'^register/$', register),
#(r'^register/complete/$', TemplateView.as_view(template_name = 'registration/registration_complete.html')),
#(r'^password/change/$',password_change,{'template_name': 'registration/password_change_form.html'}),
#(r'^password/change/done/$',password_change_done,{'template_name': 'registration/password_change_done.html'}),
#(r'^password/reset/$',password_reset,{'template_name': 'registration/password_reset_form.html',
#'email_template_name': 'registration/password_reset_email.html',
#'subject_template_name': 'registration/password_reset_subject.txt'}),
(r'^password/reset/done/$',password_reset_done,{'template_name': 'registration/password_reset_done.html'}),
(r'^password/reset/confirm/(?P<uidb36>[0-9A-Za-z]+)-(?P<token>.+)/$',
password_reset_confirm,{'template_name': 'registration/password_reset_confirm.html'}),
(r'^password/reset/complete/$',password_reset_complete,{'template_name': 'registration/password_reset_complete.html'}),"""

