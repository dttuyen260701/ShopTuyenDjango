from multiprocessing import context
from typing import Type
from django.http import HttpResponse
from django.shortcuts import redirect, render
from Category.views import category
from django.contrib.auth.decorators import login_required
from home import bill_detailsform
from home.models import Chitietdonhang, Donhang, Sanpham, App, Loaisanpham
from django.db.models import Q
from django.core.paginator import Paginator

# Create your views here.
def product(request, id_pro):
    app = App.objects.get(id = 1)
    cart_sl = 0
    if request.user.is_authenticated:
        bill = Donhang.objects.filter(Q(idkhachhang_id=request.user.id) & 
                Q(status = 0))
        listBill = Chitietdonhang.objects.filter(Q(iddonhang = bill[0].id))
        for pro in listBill:
            cart_sl = cart_sl + pro.soluong
    sanpham = Sanpham.objects.get(id=id_pro)
    loai = Loaisanpham.objects.get(id = sanpham.idloaisanpham.id)
    sale_price = int(sanpham.giasanpham*(100-app.offer_day)/100) if sanpham.sale == 1 else sanpham.giasanpham
    trangdiems = Loaisanpham.objects.filter(Q(phanloai = 1))
    duongdas = Loaisanpham.objects.filter(Q(phanloai = 2))
    tpcns = Loaisanpham.objects.filter(Q(phanloai = 3))
    saling = Sanpham.objects.filter(Q(sale=1)).order_by('-moi')[:3]
    category_pro = Sanpham.objects.filter(Q(idloaisanpham = loai.id)).order_by('-moi')[:3]
    context = {'app': app, 'trangdiems':trangdiems, 'len_td':len(trangdiems), 
                'duongdas':duongdas, 'len_dd':len(duongdas),'tpcns':tpcns, 'sale_price':sale_price,
                'len_tp':len(tpcns), 'typ': str(sanpham.type),'cate':int(loai.id), 'cart_sl':cart_sl,
                'loai':loai, 'sx':0, 'sanpham':sanpham, 'saling':saling, 'category_pro':category_pro}
    return render(request, 'product/detail.html', context)

@login_required(login_url='/login')
def addproduct(request, id_pro):
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
    return redirect ("product:product", id_pro)