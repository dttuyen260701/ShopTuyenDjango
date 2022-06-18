from pyexpat.errors import messages
from django.http import HttpResponse
from django.shortcuts import redirect, render
from home.models import Faq, Sanpham, App, Loaisanpham
from django.db.models import Q
from django.contrib.auth.models import User
from .formcontact import ContactForm


# Create your views here.
def contact(request):
    app = App.objects.get(id = 1)
    trangdiems = Loaisanpham.objects.filter(Q(phanloai = 1))
    duongdas = Loaisanpham.objects.filter(Q(phanloai = 2))
    tpcns = Loaisanpham.objects.filter(Q(phanloai = 3))
    if request.method == 'POST':
        lname = request.POST.get('lname')
        fname = request.POST.get('fname')
        username = request.POST.get('username')
        subject = request.POST.get('subject')
        message = request.POST.get('message')
        contact_new = {'firstname': fname, 'lastname': lname, 'email': username,
                        'subject': subject, 'message': message}
        form = ContactForm(contact_new)   
        if form.is_valid():
            form.save()
            return render(request, 'error.html', {'cd':True, 'error':"Cảm ơn sự đóng góp của bạn, hãy tiếp tục trải nghiệm dịch vụ của chúng tôi và đóng góp thêm những phản hồi!"})  
        else:
            return render(request, 'error.html', {'cd':False, 'error':"Lỗi!"})      
    else:
        context = {'app': app, 'trangdiems':trangdiems, 
                'duongdas':duongdas, 'tpcns':tpcns}
        return render(request, 'contact/contact.html', context)

def faq(request):
    app = App.objects.get(id = 1)
    faqs = Faq.objects.all()
    trangdiems = Loaisanpham.objects.filter(Q(phanloai = 1))
    duongdas = Loaisanpham.objects.filter(Q(phanloai = 2))
    tpcns = Loaisanpham.objects.filter(Q(phanloai = 3))
    context = {'app': app, 'trangdiems':trangdiems, 
                'duongdas':duongdas, 'tpcns':tpcns, 'faqs':faqs}
    return render(request, 'contact/faq.html', context)