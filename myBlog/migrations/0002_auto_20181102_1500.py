# -*- coding: utf-8 -*-
# Generated by Django 1.11.4 on 2018-11-02 07:00
from __future__ import unicode_literals

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('myBlog', '0001_initial'),
    ]

    operations = [
        migrations.AlterModelTable(
            name='ad',
            table='ad',
        ),
        migrations.AlterModelTable(
            name='article',
            table='article',
        ),
        migrations.AlterModelTable(
            name='category',
            table='category',
        ),
        migrations.AlterModelTable(
            name='comment',
            table='comment',
        ),
        migrations.AlterModelTable(
            name='links',
            table='links',
        ),
        migrations.AlterModelTable(
            name='tag',
            table='tag',
        ),
        migrations.AlterModelTable(
            name='user',
            table='user',
        ),
    ]
