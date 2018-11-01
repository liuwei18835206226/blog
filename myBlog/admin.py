# -*- coding：utf-8 -*-
from django.contrib import admin
from .models import *

# Register your models here.

# 自定义管理类，拿 Article 举例
class ArticleAdmin(admin.ModelAdmin):

    list_display = ('title','desc','category','user')
    list_display_links = ('title','desc',)
    list_editable = ('user','category')

    fieldsets = (
        (None,{
            'fields':('title','desc','content')
        }),
        ('高级设置',{
            'classes':('collapse'),
            'fields':('click_count','is_recommend','category','user','tag')
        })
    )

    class Media:
        js = (
            '/static/js/kindeditor/kindeditor-all-min.js',
            '/static/js/kindeditor/lang/zh-CN.js',
            '/static/js/kindeditor/config.js'
        )


# 注册 models
admin.site.register(User)
admin.site.register(Tag)
admin.site.register(Category)
admin.site.register(Article,ArticleAdmin)
admin.site.register(Comment)
admin.site.register(Links)
admin.site.register(Ad)




