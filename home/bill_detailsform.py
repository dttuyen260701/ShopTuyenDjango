from django.forms import ModelForm

from home.models import Chitietdonhang

class Bill_detailsform(ModelForm):
    class Meta:
        model = Chitietdonhang
        fields = '__all__'