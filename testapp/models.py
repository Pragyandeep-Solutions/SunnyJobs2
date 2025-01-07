from django.db import models

# Create your models here.
class HydJobs(models.Model):
    date = models.DateField()
    company = models.CharField(max_length=130)
    title = models.CharField(max_length=170)
    eligibility = models.CharField(max_length=130)
    address = models.TextField()
    email = models.EmailField()
    phonenumber = models.BigIntegerField()

class BngJobs(models.Model):
    date = models.DateField()
    company = models.CharField(max_length=130)
    title = models.CharField(max_length=170)
    eligibility = models.CharField(max_length=130)
    address = models.TextField()
    email = models.EmailField()
    phonenumber = models.BigIntegerField()

class PuneJobs(models.Model):
    date = models.DateField()
    company = models.CharField(max_length=130)
    title = models.CharField(max_length=170)
    eligibility = models.CharField(max_length=130)
    address = models.TextField()
    email = models.EmailField()
    phonenumber = models.BigIntegerField()

class BbsrJobs(models.Model):
    date = models.DateField()
    company = models.CharField(max_length=130)
    title = models.CharField(max_length=170)
    eligibility = models.CharField(max_length=130)
    address = models.TextField()
    email = models.EmailField()
    phonenumber = models.BigIntegerField()

    def __str__(self):
        return self.title