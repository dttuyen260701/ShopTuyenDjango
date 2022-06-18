from django.forms import ModelForm
from .models import AuthUser

class UserForm(ModelForm):
    class Meta:
        model = AuthUser
        fields = '__all__'
        # fields = ['name', 'body']