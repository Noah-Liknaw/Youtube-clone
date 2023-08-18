from django.shortcuts import render
from rest_framework.response import Response
from rest_framework.decorators import api_view

from .serializers import ProductSerilizer
from .serializers import VideoSerilizer

from .models import Product
from .models import Video
# Create your views here.

"""@api_view(['GET'])
def apiOverview(request):
    api_urls = {
        'List': '/product=list/',
        'Deatil View': '/product-detail/<int:id>',
        'Create': '/product-create/',
        'Update': '/product-update/<int:id>',
        'Delete': '/product-delete/<int:id>',
    }

    return Response(api_urls);
"""
@api_view(['GET'])
def ShowAll(request):
    products = Product.objects.all()
    serializer = ProductSerilizer(products, many=True)
    return Response(serializer.data)

@api_view(['GET'])
def ViewProduct(request, pk):
    products = Product.objects.get(id=pk)
    serializer = ProductSerilizer(products, many=False)
    return Response(serializer.data)

@api_view(['POST'])
def CreateProduct(request):
    serializer = ProductSerilizer(data=request.data)

    if serializer.is_valid():
        serializer.save()

    return Response(serializer.data)

@api_view(['POST'])
def updateProduct(request, pk):
    product = Product.objects.get(id=pk)
    serializer = ProductSerilizer(instance=product, data=request.data)
    if serializer.is_valid():
        serializer.save()

    return Response(serializer.data)
@api_view(['GET'])
def deleteProduct(request, pk):
    product = Product.objects.get(id=pk)
    product.delete()

    return Response('Items delete successfully!')


@api_view(['GET'])
def getAllVideos(request):
    videos = Video.objects.all()
    serializer = VideoSerilizer(videos, many=True)
    return Response(serializer.data)