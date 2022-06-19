from multiprocessing import context
from typing import Type
from django.http import HttpResponse
from django.shortcuts import redirect, render
from home.models import Chitietdonhang, Donhang, Sanpham, App, Loaisanpham
from home import bill_detailsform
from django.db.models import Q
from django.core.paginator import Paginator
from django.contrib.auth.decorators import login_required

# Create your views here.
def category(request, typ, cate, sx):
    app = App.objects.get(id = 1)
    cart_sl = 0
    if request.user.is_authenticated:
        bill = Donhang.objects.filter(Q(idkhachhang_id=request.user.id) & 
                Q(status = 0))
        listBill = Chitietdonhang.objects.filter(Q(iddonhang = bill[0].id))
        for pro in listBill:
            cart_sl = cart_sl + pro.soluong
    if cate != 0:
        loai = Loaisanpham.objects.get(id = cate)
    else:
        loai = {'tenloaisanpham': "Tất cả", "mota": ""}
    trangdiems = Loaisanpham.objects.filter(Q(phanloai = 1))
    duongdas = Loaisanpham.objects.filter(Q(phanloai = 2))
    tpcns = Loaisanpham.objects.filter(Q(phanloai = 3))
    name_cl = "-moi"
    if sx == 0: name_cl = "-moi"
    if sx == 1: name_cl = "giasanpham"
    if sx == 2: name_cl = "-giasanpham"
    if sx == 3: name_cl = "tensanpham"
    if sx == 4: name_cl = "-sale"
    q = request.GET.get('q') if request.GET.get('q') != None else ''
    sanphams = Sanpham.objects.filter(Q(idloaisanpham = cate) &
    Q(tensanpham__icontains = q)).order_by(name_cl) if cate != 0 else Sanpham.objects.filter(Q(type = typ) &
    Q(tensanpham__icontains = q)).order_by(name_cl)
    top_trend_pr = []
    for i in range(0,len(sanphams)):
        temp1 = []
        price = int(sanphams[i].giasanpham*(100-app.offer_day)/100) if sanphams[i].sale == 1 else 0
        temp1.append(sanphams[i])
        temp1.append(price)
        top_trend_pr.append(temp1)
    p = Paginator(top_trend_pr, 6)
    page = request.GET.get('page') if request.GET.get('page') != None else '1'
    list_res = p.get_page(page)
    nums = "a" * list_res.paginator.num_pages
    context = {'app': app, 'trangdiems':trangdiems, 'len_td':len(trangdiems), 'duongdas':duongdas, 'cart_sl':cart_sl,
               'len_dd':len(duongdas),'tpcns':tpcns, 'len_tp':len(tpcns),'typ':typ, 'cate':cate, 'sx':sx,
               'loai':loai, 'sanphams':list_res, 'nums':nums, 'query':q, 'page':int(page)}
    return render(request, 'category/category.html', context)

def salingday(request, sx):
    app = App.objects.get(id = 1)
    q = request.GET.get('q') if request.GET.get('q') != None else ''
    trangdiems = Loaisanpham.objects.filter(Q(phanloai = 1))
    duongdas = Loaisanpham.objects.filter(Q(phanloai = 2))
    tpcns = Loaisanpham.objects.filter(Q(phanloai = 3))
    cart_sl = 0
    if request.user.is_authenticated:
        bill = Donhang.objects.filter(Q(idkhachhang_id=request.user.id) & 
                Q(status = 0))
        listBill = Chitietdonhang.objects.filter(Q(iddonhang = bill[0].id))
        for pro in listBill:
            cart_sl = cart_sl + pro.soluong
    name_cl = "-moi"
    if sx == 0: name_cl = "-moi"
    if sx == 1: name_cl = "giasanpham"
    if sx == 2: name_cl = "-giasanpham"
    if sx == 3: name_cl = "tensanpham"
    if sx == 4: name_cl = "-sale"
    sanphams = Sanpham.objects.filter(Q(sale=1) &
                Q(tensanpham__icontains = q)).order_by(name_cl)
    top_trend_pr = []
    for i in range(0,len(sanphams)):
        temp1 = []
        price = int(sanphams[i].giasanpham*(100-app.offer_day)/100) if sanphams[i].sale == 1 else 0
        temp1.append(sanphams[i])
        temp1.append(price)
        top_trend_pr.append(temp1)
    p = Paginator(top_trend_pr, 6)
    page = request.GET.get('page') if request.GET.get('page') != None else '1'
    list_res = p.get_page(page)
    nums = "a" * list_res.paginator.num_pages
    context = {'app': app, 'trangdiems':trangdiems, 'len_td':len(trangdiems), 'duongdas':duongdas, 
               'len_dd':len(duongdas),'tpcns':tpcns, 'len_tp':len(tpcns),'typ':0, 'cate':0, 'sx':sx,
               'sanphams':list_res, 'nums':nums, 'page':int(page), 'query':q, 'cart_sl':cart_sl}
    return render(request, 'category/sale_product.html', context)

@login_required(login_url='/register')
def addproduct_cate(request, typ, cate, sx, id_pro, is_sale):#1 la cho sale, 0 la cate
    app = App.objects.get(id = 1)
    bill = Donhang.objects.filter(Q(idkhachhang_id=request.user.id) & 
            Q(status = 0))
    bill_get = Donhang.objects.get(id=bill[0].id)
    sanpham = Sanpham.objects.get(id=id_pro)
    if len(Chitietdonhang.objects.filter(Q(iddonhang = bill_get.id) & Q(idsanpham = id_pro))) == 0:
        gia = sanpham.giasanpham if sanpham.sale == 0 else sanpham.giasanpham*(100-app.offer_day)/100
        newbilldetails = {'iddonhang':bill_get.id, 'idsanpham':id_pro, 'soluong':1,
                                'gia': gia}
        billdetailsform = bill_detailsform.Bill_detailsform(newbilldetails)
        if billdetailsform.is_valid():
            billdetailsform.save()
        else:
            return HttpResponse(billdetailsform)
    else:
        gia = sanpham.giasanpham if sanpham.sale == 0 else sanpham.giasanpham*(100-app.offer_day)/100
        billdetails = Chitietdonhang.objects.filter(Q(iddonhang = bill_get.id) & Q(idsanpham = id_pro))[0]
        billdetails.soluong = billdetails.soluong + 1
        billdetails.gia = gia*billdetails.soluong 
        billdetails.save()
    listBill = Chitietdonhang.objects.filter(Q(iddonhang = bill_get.id))
    bill_get.tong = 0
    for sp in listBill:
        sp.gia = sp.idsanpham.giasanpham*sp.soluong
        bill_get.tong = bill_get.tong + sp.gia
    bill_get.save()
    if is_sale:
        return redirect ("category:saling", sx)
    else:
        return redirect ("category:category", typ, cate, sx)