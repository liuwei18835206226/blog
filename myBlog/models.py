from django.db import models
from django.contrib.auth.models import AbstractUser

# Create your models here.

# 用户模型.
# 第一种：采用的继承方式扩展用户信息（本系统采用）
# 扩展：关联的方式去扩展用户信息
class User(AbstractUser):
    avatar = models.ImageField(upload_to='avatar/%Y/%m', default='avatar/default.png', max_length=200, blank=True, null=True, verbose_name='用户头像')
    qq = models.CharField(max_length=20, blank=True, null=True, verbose_name='QQ号码')
    mobile = models.CharField(max_length=11, blank=True, null=True, unique=True, verbose_name='手机号码')
    url = models.URLField(max_length=100, blank=True, null=True, verbose_name='个人网页地址')

    class Meta:
        verbose_name = '用户'
        verbose_name_plural = verbose_name
        ordering = ['-id']
        db_table = 'user'

    def __str__(self):
        return self.username

class Tag(models.Model):
    name = models.CharField(max_length=30,verbose_name='标签名称')

    class Meta:
        verbose_name = '标签'
        verbose_name_plural = verbose_name
        db_table = 'tag'

    def __str__(self):
        return self.name    # 只能返回字符串类型


class Category(models.Model):
    name = models.CharField(max_length=30,verbose_name='分类名称')
    index = models.IntegerField(default=999,verbose_name='分类排序')

    class Meta:
        verbose_name = '分类'
        verbose_name_plural = verbose_name
        ordering = ['index', 'id']
        db_table = 'category'

    def __str__(self):
        return self.name    # 只能返回字符串类型

# 自定义一个文章Model的管理器，两种方法
# 第一种、新加一个数据处理的方法，本例
# 第二种、改变原有的queryset
class ArticleManager(models.Manager):
    def distinct_date(self):
        distinct_date_list = []
        date_list = self.values('date_publish')
        for date in date_list:
            date = date['date_publish'].strftime('%Y-%m')
            if date not in distinct_date_list:
                distinct_date_list.append(date)
        return distinct_date_list



# 文章模型
class Article(models.Model):
    title = models.CharField(max_length=50, verbose_name='文章标题')
    desc = models.CharField(max_length=50, verbose_name='文章描述')
    content = models.TextField(verbose_name='文章内容')
    click_count = models.IntegerField(default=0, verbose_name='点击次数')
    is_recommend = models.BooleanField(default=False, verbose_name='是否推荐')
    date_publish = models.DateTimeField(auto_now_add=True, verbose_name='发布时间')
    user = models.ForeignKey(User, verbose_name='用户',on_delete=models.CASCADE)  # on_delete 删除时的动作,cascade级联删除，do_nothing不做任何操作，
    category = models.ForeignKey(Category, blank=True, null=True, verbose_name='分类',on_delete=models.CASCADE)
    tag = models.ManyToManyField(Tag, verbose_name='标签')

    # 这里使用自定义管理器处理数据，而不使用原生的 objects
    objects = ArticleManager()  # 关联自定义管理器

    class Meta:
        verbose_name = '文章'
        verbose_name_plural = verbose_name
        ordering = ['-date_publish']  # 最新发布在前
        db_table = 'article'

    def __str__(self):
        return self.title

# 评论模型
# username email  url 为了记录匿名评论用户的信息
class Comment(models.Model):
    content = models.TextField(verbose_name='评论内容')
    username = models.CharField(max_length=30, blank=True, null=True, verbose_name='用户名')
    email = models.EmailField(max_length=50, blank=True, null=True, verbose_name='邮箱地址')
    url = models.URLField(max_length=100, blank=True, null=True, verbose_name='个人网页地址')
    date_publish = models.DateTimeField(auto_now_add=True, verbose_name='发布时间')
    user = models.ForeignKey(User, related_name='comments',blank=True, null=True, verbose_name='用户',on_delete=models.CASCADE)
    article = models.ForeignKey(Article, blank=True, null=True, verbose_name='文章',on_delete=models.CASCADE)

    # root = models.ForeignKey('self',null=True,related_name='root_comment',verbose_name='顶级评论',on_delete=models.DO_NOTHING)
    pid = models.ForeignKey('self', blank=True, related_name='parent_comment',null=True, verbose_name='父级评论',on_delete=models.CASCADE)
    # reply_to = models.ForeignKey(User,related_name='replies',null=True,verbose_name='回复对象exit',on_delete=models.DO_NOTHING)

    class Meta:
        verbose_name = '评论'
        verbose_name_plural = verbose_name
        db_table = 'comment'
        ordering = ['-date_publish']

    def __str__(self):
        return str(self.id)

# 友情链接
class Links(models.Model):
    title = models.CharField(max_length=50, verbose_name='标题')
    description = models.CharField(max_length=200, verbose_name='友情链接描述')
    callback_url = models.URLField(verbose_name='url地址')
    date_publish = models.DateTimeField(auto_now_add=True, verbose_name='发布时间')
    index = models.IntegerField(default=999, verbose_name='排列顺序(从小到大)')

    class Meta:
        verbose_name = '友情链接'
        verbose_name_plural = verbose_name
        ordering = ['index', 'id']
        db_table = 'links'

    def __str__(self):
        return self.title

# 广告
class Ad(models.Model):
    title = models.CharField(max_length=50, verbose_name='广告标题')
    description = models.CharField(max_length=200,  verbose_name='广告描述')
    image_url = models.ImageField(upload_to='ad/%Y/%m', verbose_name='图片路径')
    callback_url = models.URLField(null=True, blank=True, verbose_name='回调url')
    date_publish = models.DateTimeField(auto_now_add=True, verbose_name='发布时间')
    index = models.IntegerField(default=999, verbose_name='排列顺序(从小到大)')

    class Meta:
        verbose_name = u'广告'
        verbose_name_plural = verbose_name
        ordering = ['index', 'id']
        db_table = 'ad'

    def __str__(self):
        return self.title
















