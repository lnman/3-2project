from django.conf.urls import patterns, include, url
from Guest import views
from django.contrib import admin
admin.autodiscover()
import os
BASE_DIR = os.path.dirname(os.path.dirname(__file__))
urlpatterns = patterns('',
    # Examples:
    # url(r'^$', 'BDCricDB.views.home', name='home'),
    # url(r'^blog/', include('blog.urls')),
    url(r'^$',views.index, name="indexview"),
    url(r'^index',views.index, name="indexview"),
    url(r'^live',views.live_page, name="liveview"),
    url(r'^login',views.login_user, name="loginview"),
    url(r'^logout',views.logout_user, name="logoutview"),
    url(r'^register',views.register, name="registerview"),
    url(r'^news/(?P<pk>\d+)',views.news_detail, name="newsview"),
    url(r'^news',views.newshome, name="newsview"),
    url(r'^search/(?P<search>\w+)',views.searchhome, name="searchview"),
    url(r'^comment',views.addcomment, name="commentview"),
    url(r'^rate/(?P<pk>\d+)/(?P<like>\d+)',views.addrating, name="rateview"),
    url(r'^players/(?P<pk>\d+)',views.player_detail, name="playerview"),
    url(r'^players',views.player_list, name="playerview"),
    url(r'^fixture',views.fixture, name="fixtureview"),
    url(r'^score/(?P<pk>\d+)',views.result_detail, name="scoreview"),
    url(r'^score',views.resulthome, name="scoreview"),
    url(r'^teams/(?P<pk>\d+)',views.team_detail, name="teamview"),
    url(r'^teams',views.team_list, name="teamview"),
    url(r'^photos',views.photos, name="photoview"),
    url(r'^stat',views.stat, name="statview"),
    url(r'^admin/fixture',views.adminfixture, name="updatefixtureview"),
    url(r'^admin/news',views.adminnews, name="updatenewsview"),
    url(r'^admin/player',views.adminplayer, name="updateplayerview"),
    #url(r'^admin/photo',views.adminphoto, name="updatephotoview"),
    #url(r'^admin',views.admin, name="updatescoreview"),
    url(r'^admin',views.admin, name="adminview"),
    url(r'(?P<path>.*)$', 'django.views.static.serve',{'document_root': BASE_DIR+'/templates/static'}),
)
