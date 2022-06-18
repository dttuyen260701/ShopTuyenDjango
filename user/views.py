from django.http import HttpResponse
from django.shortcuts import redirect, render
from matplotlib.style import use
from home.models import Chitietdonhang, Donhang, Sanpham, App, Loaisanpham
from django.contrib.auth.decorators import login_required
from django.db.models import Q
from django.contrib import messages
from django.contrib.auth.models import User
from django.contrib.auth import authenticate, login, logout
from datetime import date
from home.billform import BillForm


# Create your views here.
@login_required(login_url='/login')
def user(request):
    cart_sl = 0
    bill = Donhang.objects.filter(Q(idkhachhang_id=request.user.id) & 
            Q(status = 0))
    listBill = Chitietdonhang.objects.filter(Q(iddonhang = bill[0].id))
    for pro in listBill:
        cart_sl = cart_sl + pro.soluong
    app = App.objects.get(id = 1)
    trangdiems = Loaisanpham.objects.filter(Q(phanloai = 1))
    duongdas = Loaisanpham.objects.filter(Q(phanloai = 2))
    tpcns = Loaisanpham.objects.filter(Q(phanloai = 3))
    context = {'app': app, 'trangdiems':trangdiems, 
            'duongdas':duongdas, 'tpcns':tpcns, 'cart_sl':cart_sl}
    return render(request, 'user/account.html', context)
 
@login_required(login_url='/login')
def changepass(request):
    if request.method == 'POST':
        newpass = request.POST.get('password')
        password = request.POST.get('password_old')
        user = request.user
        if user.check_password(password):
            user.set_password(newpass)
            user.save()
            user = authenticate(request, username=user.username, password=newpass)
            login(request, user)
            return render(request, 'error.html', {'error': "Đổi mật khẩu thành công!!!"})    
        else:
            return render(request, 'error.html', {'error': "Sai mật khẩu!"})    
    return redirect('user:user')
 
@login_required(login_url='/login')
def update(request):
    if request.method == 'POST':
        lname = request.POST.get('lname')
        fname = request.POST.get('fname')
        user = request.user
        user.first_name = fname
        user.last_name = lname
        user.save()   
    return redirect('user:user')

@login_required(login_url='/login')
def listbill(request):
    app = App.objects.get(id = 1)
    cart_sl = 0
    bill = Donhang.objects.filter(Q(idkhachhang_id=request.user.id) & 
            Q(status = 0))
    listBill = Chitietdonhang.objects.filter(Q(iddonhang = bill[0].id))
    for pro in listBill:
        cart_sl = cart_sl + pro.soluong
    trangdiems = Loaisanpham.objects.filter(Q(phanloai = 1))
    duongdas = Loaisanpham.objects.filter(Q(phanloai = 2))
    tpcns = Loaisanpham.objects.filter(Q(phanloai = 3))
    idkh = request.user.id
    listBill = Donhang.objects.filter(Q(idkhachhang_id = idkh) 
    & (Q(status = 1) | Q(status = 2) | Q(status = 3)))
    context = {'app': app, 'trangdiems':trangdiems, 'cart_sl':cart_sl,
            'duongdas':duongdas, 'tpcns':tpcns, 'listBill':listBill}
    return render(request, 'user/listbill.html', context)

@login_required(login_url='/login')
def updatebill(request, idBill, status):
    bill = Donhang.objects.get(id=idBill)
    bill.status = status
    bill.save()
    return redirect('user:billdetails', idBill)

@login_required(login_url='/login')
def billdetails(request, idBill):
    app = App.objects.get(id = 1)
    cart_sl = 0
    bill = Donhang.objects.filter(Q(idkhachhang_id=request.user.id) & 
            Q(status = 0))
    listBill = Chitietdonhang.objects.filter(Q(iddonhang = bill[0].id))
    for pro in listBill:
        cart_sl = cart_sl + pro.soluong
    trangdiems = Loaisanpham.objects.filter(Q(phanloai = 1))
    duongdas = Loaisanpham.objects.filter(Q(phanloai = 2))
    tpcns = Loaisanpham.objects.filter(Q(phanloai = 3))
    listBill = Chitietdonhang.objects.filter(Q(iddonhang = idBill))
    bill = Donhang.objects.get(id=idBill)
    tong_sp = bill.tong-bill.ship
    context = {'app': app, 'trangdiems':trangdiems, 'cart_sl':cart_sl,
            'duongdas':duongdas, 'tpcns':tpcns, 'listBill':listBill,
            'idBill':idBill, 'bill':bill, 'tong_sp':tong_sp}
    return render(request, 'user/billdetails.html', context)

@login_required(login_url='/login')
def showcart(request):
    app = App.objects.get(id = 1)
    cart_sl = 0
    trangdiems = Loaisanpham.objects.filter(Q(phanloai = 1))
    duongdas = Loaisanpham.objects.filter(Q(phanloai = 2))
    tpcns = Loaisanpham.objects.filter(Q(phanloai = 3))
    bill = Donhang.objects.filter(Q(idkhachhang_id=request.user.id) & 
            Q(status = 0))
    listBill = Chitietdonhang.objects.filter(Q(iddonhang = bill[0].id))
    for sp in listBill:
        cart_sl = cart_sl + sp.soluong
        sp.idsanpham.giasanpham  = sp.idsanpham.giasanpham if sp.idsanpham.sale == 0 else sp.idsanpham.giasanpham*(100-app.offer_day)/100
        sp.gia = sp.idsanpham.giasanpham*sp.soluong
    tong_sp = bill[0].tong-bill[0].ship
    context = {'app': app, 'trangdiems':trangdiems, 
            'duongdas':duongdas, 'tpcns':tpcns, 'listBill':listBill, 
            'bill':bill[0], 'tong_sp':tong_sp, 'cart_sl':cart_sl}
    return render(request, 'user/cart.html', context)

@login_required(login_url='/login')
def change(request, idpro, reduOrIncre):#tang la 1 giam la 0 
    app = App.objects.get(id = 1)
    cart_sl = 0
    bill = Donhang.objects.filter(Q(idkhachhang_id=request.user.id) & 
            Q(status = 0))
    bill_get = Donhang.objects.get(id=bill[0].id)
    product = Chitietdonhang.objects.get(id=idpro)
    product.soluong = (product.soluong + 1) if reduOrIncre == 1 else (product.soluong - 1)
    if product.soluong == 0:
        product.delete()
    else:
        product.save()
    listBill = Chitietdonhang.objects.filter(Q(iddonhang = bill_get.id))
    bill_get.tong = 0
    for sp in listBill:
        cart_sl = cart_sl + sp.soluong
        gia = sp.idsanpham.giasanpham if sp.idsanpham.sale == 0 else sp.idsanpham.giasanpham*(100-app.offer_day)/100
        sp.gia = gia*sp.soluong
        sp.save()
        bill_get.tong = bill_get.tong + sp.gia
    bill_get.save()
    return redirect('user:cart')

@login_required(login_url='/login')
def delPro(request, idpro):
    app = App.objects.get(id = 1)
    product = Chitietdonhang.objects.get(id=idpro)
    product.delete()
    bill = Donhang.objects.filter(Q(idkhachhang_id=request.user.id) & 
            Q(status = 0))
    bill_get = Donhang.objects.get(id=bill[0].id)
    listBill = Chitietdonhang.objects.filter(Q(iddonhang = bill_get.id))
    bill_get.tong = 0
    for sp in listBill:
        gia = sp.idsanpham.giasanpham if sp.idsanpham.sale == 0 else sp.idsanpham.giasanpham*(100-app.offer_day)/100
        sp.gia = gia*sp.soluong
        bill_get.tong = bill_get.tong + sp.gia
    bill_get.save()
    return redirect('user:cart')

@login_required(login_url='/login')
def checkout_address(request):
    cart_sl = 0
    bill = Donhang.objects.filter(Q(idkhachhang_id=request.user.id) & 
            Q(status = 0))
    listBill = Chitietdonhang.objects.filter(Q(iddonhang = bill[0].id))
    for pro in listBill:
        cart_sl = cart_sl + pro.soluong
    app = App.objects.get(id = 1)
    trangdiems = Loaisanpham.objects.filter(Q(phanloai = 1))
    duongdas = Loaisanpham.objects.filter(Q(phanloai = 2))
    tpcns = Loaisanpham.objects.filter(Q(phanloai = 3))
    tong_sp = bill[0].tong-bill[0].ship
    address = bill[0].diachi.split(',')
    quan = ""
    thanhpho = ""
    if len(address) == 3:
        quan = address[1]
        thanhpho = address[2]
    context = {'app': app, 'trangdiems':trangdiems, 'tong_sp':tong_sp, 
            'duongdas':duongdas, 'tpcns':tpcns, 'cart_sl':cart_sl, 
            'bill': bill[0], 'address':address[0], 'quan':quan,
            'thanhpho':thanhpho}
    return render(request, 'user/checkout.html', context)

@login_required(login_url='/login')
def checkout_ship(request):
    cart_sl = 0
    bill = Donhang.objects.filter(Q(idkhachhang_id=request.user.id) & 
            Q(status = 0))
    bill_value = Donhang.objects.get(id=bill[0].id)
    listBill = Chitietdonhang.objects.filter(Q(iddonhang = bill[0].id))
    if request.method == 'POST':
        diachi = request.POST.get('address') + "," + request.POST.get('quan') + "," + request.POST.get('thanhpho')
        phone = request.POST.get('phone')
        bill_value.diachi = diachi
        bill_value.phone = phone
        bill_value.save()
    for pro in listBill:
        cart_sl = cart_sl + pro.soluong
    app = App.objects.get(id = 1)
    trangdiems = Loaisanpham.objects.filter(Q(phanloai = 1))
    duongdas = Loaisanpham.objects.filter(Q(phanloai = 2))
    tpcns = Loaisanpham.objects.filter(Q(phanloai = 3))
    tong_sp = bill_value.tong-bill_value.ship
    context = {'app': app, 'trangdiems':trangdiems, 'tong_sp':tong_sp,
            'duongdas':duongdas, 'tpcns':tpcns, 'cart_sl':cart_sl, 'bill': bill_value}
    return render(request, 'user/checkout2.html', context)

@login_required(login_url='/login')
def checkout_pay(request):
    app = App.objects.get(id = 1)
    cart_sl = 0
    bill = Donhang.objects.filter(Q(idkhachhang_id=request.user.id) & 
            Q(status = 0))
    bill_value = Donhang.objects.get(id=bill[0].id)
    listBill = Chitietdonhang.objects.filter(Q(iddonhang = bill[0].id))
    for pro in listBill:
        cart_sl = cart_sl + pro.soluong
    if request.method == 'POST':
        ship_method =  request.POST.get('delivery')
        ship_fee = 0
        if ship_method == "1":
            ship_fee = 25
        if ship_method == "2":
            ship_fee = 10
        if ship_method == "3":
            ship_fee = 15
        bill_value.ship = ship_fee
        bill_value.tong = 0
        for sp in listBill:
            gia = sp.idsanpham.giasanpham if sp.idsanpham.sale == 0 else sp.idsanpham.giasanpham*(100-app.offer_day)/100
            sp.gia = gia*sp.soluong
            bill_value.tong = bill_value.tong + sp.gia
        bill_value.tong = bill_value.tong + bill_value.ship
        bill_value.save()
    trangdiems = Loaisanpham.objects.filter(Q(phanloai = 1))
    duongdas = Loaisanpham.objects.filter(Q(phanloai = 2))
    tpcns = Loaisanpham.objects.filter(Q(phanloai = 3))
    tong_sp = bill_value.tong-bill_value.ship
    context = {'app': app, 'trangdiems':trangdiems, 'tong_sp':tong_sp,
            'duongdas':duongdas, 'tpcns':tpcns, 'cart_sl':cart_sl, 'bill': bill_value}
    return render(request, 'user/checkout3.html', context)
    
@login_required(login_url='/login')
def checkout_confirm(request):
    app = App.objects.get(id = 1)
    cart_sl = 0
    bill = Donhang.objects.filter(Q(idkhachhang_id=request.user.id) & 
            Q(status = 0))
    bill_value = Donhang.objects.get(id=bill[0].id)
    listBill = Chitietdonhang.objects.filter(Q(iddonhang = bill[0].id))
    for pro in listBill:
        cart_sl = cart_sl + pro.soluong
    if request.method == 'POST':
        payment =  request.POST.get('payment')
        bill_value.pay_method = payment
        bill_value.save()
    trangdiems = Loaisanpham.objects.filter(Q(phanloai = 1))
    duongdas = Loaisanpham.objects.filter(Q(phanloai = 2))
    tpcns = Loaisanpham.objects.filter(Q(phanloai = 3))
    tong_sp = bill_value.tong-bill_value.ship
    context = {'app': app, 'trangdiems':trangdiems, 'tong_sp':tong_sp, 'listBill':listBill,
            'duongdas':duongdas, 'tpcns':tpcns, 'cart_sl':cart_sl, 'bill': bill_value}
    return render(request, 'user/checkout4.html', context)

@login_required(login_url='/login')
def done_checkout(request):
    app = App.objects.get(id = 1)
    cart_sl = 0
    bill = Donhang.objects.filter(Q(idkhachhang_id=request.user.id) & 
            Q(status = 0))
    bill_value = Donhang.objects.get(id=bill[0].id)
    listBill = Chitietdonhang.objects.filter(Q(iddonhang = bill[0].id))
    for pro in listBill:
        cart_sl = cart_sl + pro.soluong
    if request.method == 'POST':
        date_time = date.today().strftime("%d-%m-%Y")
        bill_value.date = str(date_time)
        bill_value.status = 1
        bill_value.save()
        newbill = {'idkhachhang':request.user.id, 'ship':0.0, 'tong':0.0, 'pay_method':0,
                            'diachi':'0', 'phone':'0', 'date':'0', 'status':0}
        billform = BillForm(newbill)
        if billform.is_valid():
            billform.save()
        else:
            return HttpResponse(billform)
            
    cart_sl = 0
    new_bill = Donhang.objects.filter(Q(idkhachhang_id=request.user.id) & 
            Q(status = 0))
    listBill = Chitietdonhang.objects.filter(Q(iddonhang = new_bill[0].id))
    for pro in listBill:
        cart_sl = cart_sl + pro.soluong
    trangdiems = Loaisanpham.objects.filter(Q(phanloai = 1))
    duongdas = Loaisanpham.objects.filter(Q(phanloai = 2))
    tpcns = Loaisanpham.objects.filter(Q(phanloai = 3))
    tong_sp = bill_value.tong-bill_value.ship
    text = ', vui lòng thanh toán trong 24h sau khi đặt hàng, nếu sau 24h bạn chưa thanh toán đơn hàng sẽ bị hủy.'
    if bill_value.pay_method == 3:
        text = ', vui lòng thanh toán sau khi nhận được hàng.'
    context = {'app': app, 'trangdiems':trangdiems, 'tong_sp':tong_sp, 
            'duongdas':duongdas, 'tpcns':tpcns, 'cart_sl':cart_sl, 'cd':True,
            'error':'Bạn đã đặt hàng thành công' + text}
    return render(request, 'error.html', context)