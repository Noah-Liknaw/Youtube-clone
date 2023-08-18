from django.db import models

# Create your models here.
class Product(models.Model):
    name = models.CharField(max_length=200, null=False, blank=False)
    category = models.CharField(max_length=100, null=False, blank=False)
    price = models.DecimalField(max_digits=4, decimal_places=2)
    description = models.TextField()
    stars = models.IntegerField()

class Video(models.Model):
    author = models.CharField(max_length=200, null=False, blank=False)
    title = models.CharField(max_length=500, null=False, blank=False)
    thumbnailUrl = models.CharField(max_length=100, null=False, blank=False)
    videoUrl = models.CharField(max_length=100, null=False, blank=False)
    


    def __str__(self):
        return self.author