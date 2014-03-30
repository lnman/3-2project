from django.conf.urls import patterns, include, url

from django.contrib import admin
admin.autodiscover()

urlpatterns = patterns('',
    # Examples:
    # url(r'^$', 'BDCricDB.views.home', name='home'),
    # url(r'^blog/', include('blog.urls')),
    url(r'^guest/', include('Guest.urls')),
    #url(r'^admin/', include('admin.urls')),
)
