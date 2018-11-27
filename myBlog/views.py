import logging
from django.shortcuts import render,redirect
from django.template.response import TemplateResponse
from django.http import HttpResponse,HttpResponseNotFound,JsonResponse
from django.conf import settings
from .models import *
from django.core.paginator import Paginator,PageNotAnInteger,InvalidPage,EmptyPage
from django.db.models import Count  # 评论数计数
import pdb
from .form import *
from django.contrib.auth import login,logout,authenticate
from django.contrib.auth.hashers import make_password

# Create your views here.

# def test(request):
#     return HttpResponse("test")
#
# def my_custom_page_not_found_view(request):
#     return HttpResponseNotFound('页面找不到了')

# 定义日志器
logger = logging.getLogger('blog.views')

# 全局公共代码
def global_settings(request):
    # 基本信息
    SITE_NAME = settings.SITE_NAME
    SITE_DESC = settings.SITE_DESC
    SITE_URL = settings.SITE_URL

    # 导航分类数据获取
    # category_list = Category.objects.all()[:2]
    category_list = Category.objects.all()

    # 获取最新文章
    article_list = Article.objects.all()

    # 广告数据获取（轮播）
    # 标签云
    tag_list = Tag.objects.all()

    # 友情链接
    # 浏览排行
    click_count_list = Article.objects.order_by('-click_count')[:6]

    # 站长推荐
    is_recommend_list = Article.objects.filter(is_recommend=True)[:6]

    # 评论排行
    comment_count_list = Comment.objects.values('article').annotate(comment_count=Count('article')).order_by('-comment_count')[:6]
    # print(comment_count_list)
    article_comment_list = [Article.objects.get(pk=comment['article']) for comment in comment_count_list]
    # 文章归档
    archive_list = Article.objects.distinct_date()

    return locals()

# 首页展示
def index(request):
    try:
        article_list = getPage(request,Article.objects.all())
    except Exception as e:
        # logger.error(e)
        pass
    return render(request,'index.html',locals())
    # return HttpResponse("sdsadasdsa")

# TODO 归档文章详情展示
def archive(request):
    try:
        # 先获取客户端提交的数据
        year = request.GET.get('year',None)
        month = request.GET.get('month', None)
        article_list = Article.objects.filter(date_publish__icontains=year+'-'+month)   # 注意，__icontains 两横杠
        article_list = getPage(request,article_list)
        # print(article_list)
    except Exception as e:
        # logger.error(e)
        pass
    return render(request,'archive.html',locals())

def tagArticle(request):
    try:
        tag = request.GET.get('tag',None)
        article_list = Article.objects.filter(tag=tag)
        article_list = getPage(request, article_list)
        # print(article_list)
    except Exception as e:
        # logger.error(e)
        pass
    return render(request,'tag_article.html',locals())



# 分页
def getPage(request,article_list):
    p = Paginator(article_list, 5)  # 分页
    try:
        current_page = int(request.GET.get('page', 1))  # 如果没有找到当前 page ，返回 1
        article_list = p.page(current_page)
    except (EmptyPage, PageNotAnInteger, InvalidPage):
        article_list = p.page(1)  # 如果出错返回到第一页
    return article_list

# 文章详情页
def article(request):
    try:
        # 获取文章id
        id = request.GET.get('id',None)
        try:
            # 获取文章信息
            article = Article.objects.get(pk=id)
            if not request.COOKIES.get('click_count_%s' % id): # 获取 cookie，看cookie中是否有此文章的阅读信息，如果没有，+1
                article.click_count += 1    # 记录阅读数
                article.save()
            previous_article = Article.objects.filter(date_publish__gt=article.date_publish).last() # 筛选发布日期大于当前请求日期的文章，并选出最后一个
            next_article = Article.objects.filter(date_publish__lt=article.date_publish).first() # 筛选发布日期小于当前请求日期的文章，并选出第一个
        except Article.DoesNotExist:
            return render(request,'failure.html',{'reason':'没有找到相应的文章'})

        # 评论表单
        comment_form = CommentForm({'author': request.user.username,
                                    'article': id,
                                    'user':request.user
                                    })

        # 获取评论信息
        comments = Comment.objects.filter(article=article)
        comment_list = []
        for comment in comments:
            for item in comment_list:
                if not hasattr(item,'children_comment'):
                    setattr(item,'children_comment',[])
                if comment.pid == item:
                    item.children_comment.append(comment)
                    break
            if comment.pid is None:
                comment_list.append(comment)

    except Exception as e:
        # logger.error(e)
        pass
    response = render(request,'article.html',locals())
    response.set_cookie('click_count_%s' % id ,'true',max_age=600)  # set_cookie(key,value,max_age) max_age单位为s ，不设置的话，默认关闭浏览器cookie失效
    return response

# 提交评论
# 如果此处安全性无关紧要，可取消 csrf 验证,去掉 html里的{% csrf_token %},此处加个装饰器 @csrf_exemp
def comment_post(request):
    # try:
        comment_form = CommentForm(request.POST)
        data = {} # 记录返回数据
        if comment_form.is_valid():
            #获取表单信息
            comment = Comment.objects.create(username=comment_form.cleaned_data["author"],
                                             # email=comment_form.cleaned_data["email"],
                                             # url=comment_form.cleaned_data["url"],
                                             content=comment_form.cleaned_data["text"],
                                             article_id=comment_form.cleaned_data["article"],
                                             user=request.user if request.user.is_authenticated() else None)    # 判断是否已经登录
            comment.save()

            # 返回数据
            data['status'] = 'SUCCESS'
            data['username'] = comment.user.username
            data['comment_time'] = comment.date_publish.strftime('%Y-%m-%d %H:%M:%S')
            data['text'] = comment.content
            data['message'] = ''
            data['comment_count'] = Comment.objects.filter(article=comment.article_id).count()   # 取评论数
        else:
            # return render(request, 'failure.html', {'reason': comment_form.errors})
            data['status'] = 'ERROR'
            data['message'] = list(comment_form.errors.values())[0][0]
        return JsonResponse(data)
    # except Exception as e:
    #     logger.error(e)
    # return redirect(request.META['HTTP_REFERER'])

def reply(request):
    pass

# 注册
def do_reg(request):
    try:
        if request.method == 'POST':
            reg_form = RegForm(request.POST)
            if reg_form.is_valid():
                # 注册
                user = User.objects.create(username=reg_form.cleaned_data["username"],
                                    email=reg_form.cleaned_data["email"],
                                    url=reg_form.cleaned_data["url"],
                                    password=make_password(reg_form.cleaned_data["password"]),)
                user.save()

                # 登录
                user.backend = 'django.contrib.auth.backends.ModelBackend' # 指定默认的登录验证方式
                login(request, user)
                return redirect(request.POST.get('source_url'))
            else:
                return render(request, 'failure.html', {'reason': reg_form.errors})
        else:
            reg_form = RegForm()
    except Exception as e:
        # logger.error(e)
        pass
    return render(request, 'reg.html', locals())

# 登录
def do_login(request):
    try:
        if request.method == 'POST':
            login_form = LoginForm(request.POST)
            if login_form.is_valid():
                # 登录
                username = login_form.cleaned_data["username"]
                password = login_form.cleaned_data["password"]
                user = authenticate(username=username, password=password)
                if user is not None:
                    user.backend = 'django.contrib.auth.backends.ModelBackend' # 指定默认的登录验证方式
                    login(request, user)
                else:
                    return render(request, 'failure.html', {'reason': '登录验证失败'})
                return redirect(request.POST.get('source_url')) # 重定向到登录前页面
            else:
                return render(request, 'failure.html', {'reason': login_form.errors})
        else:
            login_form = LoginForm()
    except Exception as e:
        # logger.error(e)
        pass
    return render(request, 'login.html', locals())

# 注销
def do_logout(request):
    try:
        logout(request)
    except Exception as e:
        # logger.error(e)
        pass
    return redirect(request.META['HTTP_REFERER'])


def shuoshuo(request):
    return render(request,'myBlog/shuoshuo.html')
def blog(request):
    article_list = getPage(request, Article.objects.all())
    return render(request,'myBlog/blog.html',locals())
def photos(request):
    return render(request,'myBlog/photos.html')
def message(request):
    return render(request,'myBlog/message.html')
def aboutme(request):
    return render(request,'myBlog/aboutme.html')

'''
def comment(request):
    try:
        # 获取文章id
        id = request.GET.get('id',None)
        try:
            # 获取文章信息
            article = Article.objects.get(pk=id)
            if not request.COOKIES.get('click_count_%s' % id): # 获取 cookie，看cookie中是否有此文章的阅读信息，如果没有，+1
                article.click_count += 1    # 记录阅读数
                article.save()
            previous_article = Article.objects.filter(date_publish__gt=article.date_publish).last() # 筛选发布日期大于当前请求日期的文章，并选出最后一个
            next_article = Article.objects.filter(date_publish__lt=article.date_publish).first() # 筛选发布日期小于当前请求日期的文章，并选出第一个
        except Article.DoesNotExist:
            return render(request,'failure.html',{'reason':'没有找到相应的文章'})

        # 评论表单
        comment_form = CommentForm(request.POST)
        # comment_form = CommentForm({'username': request.user.author,
        #                             # 'email': request.user.email,
        #                             # 'url': request.user.url,
        #                             'content':request.user.text,
        #                             'article':id,
        #                             'user': request.user.username} if request.user.is_authenticated() else{'article':id},
        #                            )

        # 获取评论信息
        comments = Comment.objects.filter(article=article)
        comment_list = []
        for comment in comments:
            for item in comment_list:
                if not hasattr(item,'children_comment'):
                    setattr(item,'children_comment',[])
                if comment.pid == item:
                    item.children_comment.append(comment)
                    break
            if comment.pid is None:
                comment_list.append(comment)
    except Exception as e:
        # logger.error(e)
        pass
    response = render(request,'comment.html',locals())
    response.set_cookie('click_count_%s' % id ,'true',max_age=600)  # set_cookie(key,value,max_age) max_age单位为s ，不设置的话，默认关闭浏览器cookie失效
    return response
'''

