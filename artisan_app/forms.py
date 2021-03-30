from django import forms
from .models import Team, Comment, NewsletterUser, User, SendEmailFooter, SendEmail
# , SendEmail, User, SendEmailFooter

class TeamForm(forms.ModelForm):

    class Meta:
        model = Team
        fields = ['first_name', 'last_name', 'photo']

class CommentForm(forms.ModelForm):
    class Meta:
        model = Comment
        fields = ('name', 'email', 'text')

choices_user_email = User.objects.all().values_list('email', 'email')
email_list = []

for item in choices_user_email:
    email_list.append(item)

choices_footer = SendEmailFooter.objects.all().values_list('version','version')

footers = []

for item in choices_footer:
    footers.append(item)


class SendNewsletterForm(forms.ModelForm):
    class Meta:
        model = SendEmail
        fields = ('title', 'body', 'author', 'footer')
        widgets = {
            'title': forms.TextInput(attrs = {'class': 'form-control', 'placeholder': 'Add a title...'}),
            'body' : forms.Textarea(attrs = {'class': 'form-control'}),
            'author': forms.Select(attrs = {'class': 'form-control', 'value': '', 'id':'ioana',}),
            'footer': forms.Select(choices = footers, attrs = {'class': 'form-control'}),
            }
class NewsletterForm(forms.ModelForm):
    class Meta:
        model = NewsletterUser
        fields = ['email']

        def clean_email(self):
            email = self.cleaned_data.get("email")
            return email
