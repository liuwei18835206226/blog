from django.shortcuts import render
from .models import Like_Record,LikeCount
from django.contrib.contenttypes.models import ContentType
from django.http import JsonResponse
from django.db.models import ObjectDoesNotExist

# 封装错误信息
def ErrorResponse(code,message):
    data = {}
    data['status'] = 'ERROR'
    data['code'] = code
    data['message'] = message
    return ErrorResponse(data)

# 封装点赞或取消成功后返回的数据
def SuccessResponse(like_num):
    data = {}
    data['status'] = 'SUCCESS'
    data['like_num'] = like_num
    return JsonResponse(data)

def like_change(request):
    # 获取数据
    user = request.user
    # 判断用户是否登录
    if not user.is_authenticated:
        return ErrorResponse(400,'未登录，不允许点赞')
    content_type = request.GET.get('content_type')
    object_id = int(request.GET.get('object_id'))

    try:
        content_type = ContentType.objects.get(model=content_type)
        model_class = content_type.model_class()
        model_obj = model_class.objects.get(pk=object_id)
    except ObjectDoesNotExist:
        return ErrorResponse(401, 'object不存在')

    # 处理数据
    if request.GET.get('is_like') == 'true':
        # 要点赞
        like_record,created = Like_Record.objects.get_or_create(content_type=content_type,object_id=object_id,user=user)
        if created:
            # 未点赞过，进行点赞
            like_count,created = LikeCount.objects.get_or_create(content_type=content_type, object_id=object_id)
            like_count.like_num += 1
            like_count.save()
            return SuccessResponse(like_count.like_num)
        else:
            # 已点赞，不能重复点赞
            return ErrorResponse(402,'已点赞过')
    else:
        # 取消点赞
        if Like_Record.objects.filter(content_type=content_type,object_id=object_id,user=user).exists():
            # 点赞过，取消点赞
            like_record = Like_Record.objects.get(content_type=content_type,object_id=object_id,user=user)
            like_record.delete()
            # 删除后，点赞总数减1
            like_count,created = LikeCount.objects.get_or_create(content_type=content_type, object_id=object_id)
            if not created:
                like_count.like_num -= 1
                like_count.save()
                return SuccessResponse(like_count.like_num)
            else:
                return ErrorResponse(404, '数据错误')
        else:
            # 没有点赞过，不能取消
            return ErrorResponse(402, '没有点赞过，不能取消')







