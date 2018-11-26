from django.conf.urls import url
from .views import *

urlpatterns = [
    url(r'^like_change',like_change,name='like_change')

]
