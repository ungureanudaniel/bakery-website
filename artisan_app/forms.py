from django import forms
from .models import *

class TeamForm(forms.ModelForm):

    class Meta:
        model = Team
        fields = ['first_name', 'last_name', 'photo']
