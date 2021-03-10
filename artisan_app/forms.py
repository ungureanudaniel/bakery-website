from django import forms
from .models import *

class TeamForm(forms.ModelForm):

    class Meta:
        model = Team
        fields = ['first_name', 'last_name', 'photo']
#
# choices = RecipeCategory.objects.all().values_list('title', 'title')
#
# choices_list = []
#
# for item in choices:
#     choices_list.append(item)
