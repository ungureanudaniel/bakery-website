# Generated by Django 3.1.7 on 2021-03-10 21:25

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('artisan_app', '0024_story'),
    ]

    operations = [
        migrations.AlterModelOptions(
            name='story',
            options={'ordering': ['id']},
        ),
    ]
