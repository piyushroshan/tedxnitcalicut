from django.conf.urls import patterns, include, url
# Uncomment the next two lines to enable the admin:
from django.contrib import admin
admin.autodiscover()

urlpatterns = patterns('',
    url(r'^$','homepage.views.main',name='home'),
    url(r'^organisers/$','aboutus.views.organisers'),
    url(r'^about/ted/$','aboutus.views.aboutted'),
    url(r'^about/tedx/$','aboutus.views.abouttedx'),
    url(r'^about/tedxnitcalicut/$','aboutus.views.abouttedxnitcalicut'),
    url(r'^contactus/$','contactus.views.contact_us'),
    url(r'^contactus/submit/$','contactus.views.submit_form'),
    url(r'^contactus/thanks/$','contactus.views.thanks'),
    url(r'^nominate/$','nominations.views.nominater'),
    url(r'^nominate/submit/$','nominations.manage.nominated'),

    # url(r'^$', 'tedxnitcalicut.views.home', name='home'),
    # url(r'^tedxnitcalicut/', include('tedxnitcalicut.foo.urls')),

    # Uncomment the admin/doc line below to enable admin documentation:
    url(r'^admin/doc/', include('django.contrib.admindocs.urls')),
    url(r'^accounts/',include('registration.urls')),
    # Uncomment the next line to enable the admin:
    url(r'^admin/', include(admin.site.urls)),
)


urlpatterns += patterns('blogs.views',
    (r"^blog/$",'list'),
    (r"^blog/(\d+)/$", 'post'),
    url(r"^blog/add_comment/(\d+)/$", "add_comment"),
)

