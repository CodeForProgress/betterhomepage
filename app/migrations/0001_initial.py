# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Contact',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('first_name', models.CharField(max_length=15)),
                ('last_name', models.CharField(max_length=15)),
                ('email', models.EmailField(max_length=255)),
                ('interested_in', models.CharField(max_length=300, null=True, blank=True)),
                ('notes', models.TextField()),
            ],
        ),
        migrations.CreateModel(
            name='Fellow',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('first_name', models.CharField(max_length=15)),
                ('last_name', models.CharField(max_length=15)),
                ('where_from', models.CharField(max_length=300, null=True, blank=True)),
                ('current_job', models.CharField(max_length=300, null=True, blank=True)),
                ('cohort', models.CharField(max_length=100, null=True, blank=True)),
                ('post_2014_residency_q1', models.CharField(max_length=2000, null=True, blank=True)),
                ('post_2014_residency_q2', models.CharField(max_length=2000, null=True, blank=True)),
                ('post_2014_residency_q3', models.CharField(max_length=2000, null=True, blank=True)),
                ('post_2014_residency_q4', models.CharField(max_length=2000, null=True, blank=True)),
                ('page_text', models.TextField(null=True, blank=True)),
                ('github_username', models.CharField(max_length=45, null=True, blank=True)),
            ],
        ),
    ]
