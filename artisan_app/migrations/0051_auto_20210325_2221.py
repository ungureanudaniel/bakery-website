# Generated by Django 3.1.7 on 2021-03-25 20:21

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('artisan_app', '0050_auto_20210325_2218'),
    ]

    operations = [
        migrations.AlterField(
            model_name='event',
            name='end_date',
            field=models.DateTimeField(),
        ),
        migrations.AlterField(
            model_name='event',
            name='start_date',
            field=models.DateTimeField(),
        ),
    ]
