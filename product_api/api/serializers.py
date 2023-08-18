from rest_framework import serializers

from .models import Product
from .models import Video

class ProductSerilizer(serializers.ModelSerializer):
    class Meta:
        model = Product
        fields = '__all__'

class VideoSerilizer(serializers.ModelSerializer):
    class Meta:
        model = Video
        fields = '__all__'