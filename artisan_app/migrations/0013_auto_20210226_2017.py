# Generated by Django 3.1.7 on 2021-02-26 18:17

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('artisan_app', '0012_auto_20210226_1405'),
    ]

    operations = [
        migrations.AddField(
            model_name='menu',
            name='slug',
            field=models.CharField(default='', max_length=200),
        ),
        migrations.AddField(
            model_name='recipecategory',
            name='slug',
            field=models.CharField(default='', max_length=200),
        ),
    ]
