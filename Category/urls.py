from django.urls import path
from . import views
app_name = 'category'

urlpatterns = [
    path('category/<str:typ>/<int:cate>/<int:sx>/', views.category, name= 'category'),
    path('category/saling/<int:sx>/', views.salingday, name= 'saling'),
    path('category/<str:typ>/<int:cate>/<int:sx>/<int:id_pro>/<int:is_sale>', views.addproduct_cate, name= 'add_pro_cate'),
]