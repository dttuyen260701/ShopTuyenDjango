from pickle import NONE
from django.http import HttpResponse
from django.shortcuts import redirect, render
from home.billform import BillForm
from home.models import Chitietdonhang, Donhang, Sanpham, App, Loaisanpham
from django.db.models import Q
from django.contrib import messages
from django.contrib.auth.models import User
from django.contrib.auth import authenticate, login, logout
from .userform import UserForm
from datetime import date
from django.contrib.auth.decorators import login_required


# Create your views here.
def index(request):
    app = App.objects.get(id = 1)
    cart_sl = 0
    if request.user.is_authenticated:
        bill = Donhang.objects.filter(Q(idkhachhang_id=request.user.id) & 
                Q(status = 0))
        listBill = Chitietdonhang.objects.filter(Q(iddonhang = bill[0].id))
        for pro in listBill:
            cart_sl = cart_sl + pro.soluong
    trangdiems = Loaisanpham.objects.filter(Q(phanloai = 1))
    duongdas = Loaisanpham.objects.filter(Q(phanloai = 2))
    tpcns = Loaisanpham.objects.filter(Q(phanloai = 3))
    top_trend = Sanpham.objects.all().order_by('-id').order_by('-sale')[:10]
    top_trend_pr = []
    for i in range(0,len(top_trend)):
        temp1 = []
        price = int(top_trend[i].giasanpham*(100-app.offer_day)/100) if top_trend[i].sale == 1 else top_trend[i].giasanpham
        temp1.append(top_trend[i])
        temp1.append(price)
        top_trend_pr.append(temp1)
    context = {'app': app, 'trangdiems':trangdiems, 'cart_sl':cart_sl,
            'duongdas':duongdas, 'tpcns':tpcns, 'top_trend':top_trend_pr}
    return render(request, 'index.html', context)

def registerPage(request):
    app = App.objects.get(id = 1)
    trangdiems = Loaisanpham.objects.filter(Q(phanloai = 1))
    duongdas = Loaisanpham.objects.filter(Q(phanloai = 2))
    tpcns = Loaisanpham.objects.filter(Q(phanloai = 3))
    top_trend = ['0']
    context = {'app': app, 'trangdiems':trangdiems, 'len_td':len(trangdiems), 
                'duongdas':duongdas, 'len_dd':len(duongdas),'tpcns':tpcns, 
                'len_tp':len(tpcns), 'top_trend':top_trend}
    if request.method == 'POST':
        lname = request.POST.get('lname')
        fname = request.POST.get('fname')
        username = request.POST.get('username')
        password = request.POST.get('password')
        if User.objects.filter(username=username).exists():
            return render(request, 'error.html', {'error': "Email đã tồn tại!"})
            
        else:
            date_time = date.today().strftime("%Y-%m-%d")
            user_new = {'password': password,'last_login': "",'is_superuser': 0, 'username': username, 'first_name': fname, 
                        'last_name': lname, 'email': username, 'is_staff': 0, 'is_active': 1, 'date_joined': date_time}
            form = UserForm(user_new)
            if form.is_valid():
                user = User.objects.create_user(username, username, password)
                user.username = user.username.lower()
                user.first_name = fname
                user.last_name = lname
                user.save()
                login(request, user)
                newbill = {'idkhachhang':request.user.id, 'ship':0.0, 'tong':0.0, 'pay_method':0,
                            'diachi':'0', 'phone':'0', 'date':'0', 'status':0}
                billform = BillForm(newbill)
                if billform.is_valid():
                    billform.save()
                else:
                    return HttpResponse(billform)
                return redirect('/')
            else:
                return render(request, 'error.html', {'error': "Lỗi!"})
    else:
        return render(request, 'user/register.html', context)

def loginPage(request):
    if request.method == 'POST':
        username = request.POST.get('username').lower()
        password = request.POST.get('password')
        try:
            user = User.objects.get(username=username)
            user = authenticate(request, username=username, password=password)
            if user is not None:
                login(request, user)
                return redirect('home:home')
            else:
                return render(request, 'error.html', {'error': "Sai mật khẩu!"})
        except:
            return render(request, 'error.html', {'error': "Tài khoản không tồn tại!"})
    return redirect('home:home')

def logoutPage(request):
    logout(request)
    return redirect('home:home')