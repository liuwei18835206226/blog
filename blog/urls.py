"""blog URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/1.11/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  url(r'^$', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  url(r'^$', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.conf.urls import url, include
    2. Add a URL to urlpatterns:  url(r'^blog/', include('blog.urls'))
"""
from django.conf.urls import url,include
from django.contrib import admin
from django.conf import settings
from django import views
# from myBlog.upload import upload_image

urlpatterns = [
    # url(r"^uploads/(?P<path>.*)$",views.static.serve,{"document_root":settings.MEDIA_ROOT}),  # 此处django1.10版本中views视图函数的语法出现了变化
    # url(r'^admin/upload/(?P<dir_name>[^/]+)$', upload_image),
    url(r'^admin/', admin.site.urls),
    url(r'^',include('myBlog.urls')),
    url(r'^',include('likes.urls')),
]

'''
出错模板第一种方式：
'''
# handler404 = 'myBlog.views.my_custom_page_not_found_view'





