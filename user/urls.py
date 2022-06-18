from django.urls import path
from . import views
app_name = 'user'

urlpatterns = [
    path('user', views.user, name= 'user'),
    path('user/updatepass', views.changepass, name= 'changepass'),
    path('user/update', views.update, name= 'update'),
    path('user/updatebill/<int:idBill>/<int:status>', views.updatebill, name= 'updatebill'),
    path('user/listbill', views.listbill, name= 'listbill'),
    path('user/billdetails/<int:idBill>', views.billdetails, name= 'billdetails'),
    path('user/cart', views.showcart, name= 'cart'),
    path('user/delPro/<int:idpro>', views.delPro, name= 'delPro'),
    path('user/change/<int:idpro>/<int:reduOrIncre>', views.change, name= 'change'),
    path('user/bill/checkout1', views.checkout_address, name= 'checkout1'),
    path('user/bill/checkout2', views.checkout_ship, name= 'checkout2'),
    path('user/bill/checkout3', views.checkout_pay, name= 'checkout3'),
    path('user/bill/checkout4', views.checkout_confirm, name= 'checkout4'),
    path('user/bill/donecheckout', views.done_checkout, name= 'donecheckout'),
]