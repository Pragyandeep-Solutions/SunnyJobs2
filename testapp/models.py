from django.db import models

# Create your models here.
class HydJobs(models.Model):
    date = models.DateField()
    company = models.CharField(max_length=30)
    title = models.CharField(max_length=70)
    eligibility = models.CharField(max_length=30)
    address = models.CharField(max_length=30)
    email = models.EmailField()
    phonenumber = models.BigIntegerField()

class BngJobs(models.Model):
    date = models.DateField()
    company = models.CharField(max_length=30)
    title = models.CharField(max_length=70)
    eligibility = models.CharField(max_length=30)
    address = models.CharField(max_length=30)
    email = models.EmailField()
    phonenumber = models.BigIntegerField()

class PuneJobs(models.Model):
    date = models.DateField()
    company = models.CharField(max_length=30)
    title = models.CharField(max_length=70)
    eligibility = models.CharField(max_length=30)
    address = models.CharField(max_length=30)
    email = models.EmailField()
    phonenumber = models.BigIntegerField()

class BbsrJobs(models.Model):
    date = models.DateField()
    company = models.CharField(max_length=120)
    title = models.CharField(max_length=120)
    eligibility = models.CharField(max_length=120)
    address = models.CharField(max_length=120)
    email = models.EmailField()
    phonenumber = models.BigIntegerField()

    def __str__(self):
        return self.title