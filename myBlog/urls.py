from django.conf.urls import url
from .views import *

urlpatterns = [
    url(r'^$',index,name='index'),
    url(r'^archive/$',archive,name='archive'),
    url(r'^tagArticle/$',tagArticle,name='tagArticle'),
    url(r'^article/$',article,name='article'),
    url(r'^comment_post/$', comment_post, name='comment_post'),
    url(r'^logout$', do_logout, name='logout'),
    url(r'^reg', do_reg, name='reg'),
    url(r'^login', do_login, name='login'),
    url(r'^shuoshuo', shuoshuo, name='shuoshuo'),
    url(r'^blog', blog, name='blog'),
    url(r'^photos', photos, name='photos'),
    url(r'^message', message, name='message'),
    url(r'^aboutme', aboutme, name='aboutme'),
    # url(r'^comment/$', comment, name='comment'),
]


