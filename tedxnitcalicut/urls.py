from django.conf.urls import patterns, include, url
# Uncomment the next two lines to enable the admin:
from django.contrib import admin
admin.autodiscover()
from django.conf.urls.defaults import *
from filebrowser.sites import site
from tedxnitcalicut import settings




urlpatterns = patterns('',
    url(r'^$','homepage.views.main',name='home'),
    url(r'^admin/filebrowser/', include(site.urls)),
    url(r'^organisers/$','aboutus.views.organisers'),
    url(r'^about/ted/$','aboutus.views.aboutted'),
    url(r'^about/tedx/$','aboutus.views.abouttedx'),
    url(r'^about/tedxnitcalicut/$','aboutus.views.abouttedxnitcalicut'),
    url(r'^contactus/$','contactus.views.contact_us'),
    url(r'^contactus/submit/$','contactus.views.submit_form'),
    url(r'^contactus/thanks/$','contactus.views.thanks'),
    url(r'^nominate/$','nominations.views.nominater'),
    url(r'^nominate/submit/$','nominations.manage.nominated'),
    url(r'^credits/$','aboutus.views.credits'),
    url(r'^privacy-policy/$','aboutus.views.privacypolicy'),
    url(r'^nominate/vote/$','nominations.views.nominator_view'),
    url(r'^partners/$', 'aboutus.views.partners'),
    # url(r'^tedxnitcalicut/', include('tedxnitcalicut.foo.urls')),

    # Uncomment the admin/doc line below to enable admin documentation:
    url(r'^admin/doc/', include('django.contrib.admindocs.urls')),
    url(r'^accounts/',include('registration.urls')),
    url(r'^nominations/vote/',include('nominations.urls')),
    # Uncomment the next line to enable the admin:
    url(r'^admin/', include(admin.site.urls)),
    url(r'^tinymce/', include('tinymce.urls')),
    url(r'^grappelli/', include('grappelli.urls')),
   
)

if settings.DEBUG:
    urlpatterns += patterns('',
        (r'^media/(?P<path>.*)$', 'django.views.static.serve', {'document_root': settings.MEDIA_ROOT, 'show_indexes':True}),
)


urlpatterns += patterns('blogs.views',
    url(r"^blog/$",'list'),
    url(r"^blog/(\d+)/$", 'post'),
    url(r"^blog/(?P<uid>[-\w]+)/$", 'list_user'),
)

