from django.db import models

# Create your models here.
class Team(models.Model):
    first_name = models.CharField(max_length=30)
    last_name = models.CharField(max_length=30)
    job = models.CharField(max_length=60, default='cofetar-patiser')
    facebook = models.CharField(max_length=200)
    insta = models.CharField(max_length=200)
    twitter = models.CharField(max_length=200)
    photo = models.ImageField(upload_to='static/img')
