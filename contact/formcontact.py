from django.forms import ModelForm
from home.models import Contact

class ContactForm(ModelForm):
    class Meta:
        model = Contact
        fields = '__all__'
        # fields = ['name', 'body']