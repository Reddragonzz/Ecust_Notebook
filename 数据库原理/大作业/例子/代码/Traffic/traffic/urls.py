"""traffic URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/4.0/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
# from django.contrib import admin
from django.urls import path
from traf_app.views import user, notification, driverInfo, myInfo, punish

urlpatterns = [
    # path('admin/', admin.site.urls),

    # 用户登录 & 注册 & 退出
    path('', user.login),
    path('login/', user.login),
    path('logup/', user.logup),
    path('logup/police/', user.logup_police),
    path('logup/driver/', user.logup_driver),
    path('logout/', user.logout),
    path('image/code/', user.image_code, name='image_code'),

    # 通知书管理
    path('notification/list/', notification.notification_list),
    path('notification/add/', notification.notification_add),
    path('notification/<int:nid>/edit/', notification.notification_edit),
    path('notification/<int:nid>/delete/', notification.notification_delete),

    # 违章处罚处理
    path('punish/list/', punish.punish_list),
    path('punish/<int:nid>/detail/', punish.punish_detail),
    path('punish/<nid>/handle/', punish.punish_handle),
    path('punish/<int:nid>/add/', punish.punish_add),  # 待完善
    path('punish/<int:nid>/edit/', punish.punish_edit),  # 待完善
    path('punish/<int:nid>/delete/', punish.punish_delete),

    # 驾驶员信息
    path('driverInfo/list/', driverInfo.driverInfo_list),

    # 个人信息
    path('myInfo/list/', myInfo.myInfo_list),
    path('myInfo/edit/', myInfo.myInfo_edit),


]
