# Generated by Django 3.1.7 on 2021-03-27 23:16

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('artisan_app', '0053_sendemailfooter'),
    ]

    operations = [
        migrations.AlterField(
            model_name='sendemail',
            name='footer',
            field=models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.SET_NULL, related_name='footers', to='artisan_app.sendemailfooter'),
        ),
    ]
