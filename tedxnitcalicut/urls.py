from django.conf.urls import patterns, include, url
# Uncomment the next two lines to enable the admin:
from django.contrib import admin
admin.autodiscover()

urlpatterns = patterns('',
    url(r'^about/ted/$','aboutus.views.aboutted'),
    url(r'^about/tedx/$','aboutus.views.abouttedx'),
    url(r'^about/tedxnitcalicut/$','aboutus.views.abouttedxnitcalicut'),
    url(r'^contactus/$','contactus.views.contact_us'),
    url(r'^contactus/submit/$','contactus.views.submit_form'),
    url(r'^contactus/thanks/$','contactus.views.thanks'),
    url(r'^blogs/$','blogs.views.list'),
    url(r"^(\d+)/$", "post"),
    # url(r'^$', 'tedxnitcalicut.views.home', name='home'),
    url(r"^add_comment/(\d+)/$", "add_comment"),
    # url(r'^tedxnitcalicut/', include('tedxnitcalicut.foo.urls')),

    # Uncomment the admin/doc line below to enable admin documentation:
    url(r'^admin/doc/', include('django.contrib.admindocs.urls')),

    # Uncomment the next line to enable the admin:
    url(r'^admin/', include(admin.site.urls)),
)


urlpatterns += patterns('blogs.views',
    (r"",'list'),
    (r"^(\d+)/$", 'post'),
)

