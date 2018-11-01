from django import template
register = template.Library()

# 注册
@register.filter(name='month_to_upper') # name不写默认为函数名
def month_to_upper(key):
    return ['一', '二', '三', '四', '五', '六', '七', '八', '九', '十', '十一', '十二'][key.month-1]

# 或者这样注册
# register.filter('month_to_upper',month_to_upper)







