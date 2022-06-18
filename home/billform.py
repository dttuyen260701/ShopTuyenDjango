from django.forms import ModelForm

from home.models import Donhang

class BillForm(ModelForm):
    class Meta:
        model = Donhang
        fields = '__all__'