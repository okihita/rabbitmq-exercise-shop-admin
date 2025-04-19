from rest_framework import serializers  # Converts Python objects into JSON strings

from products.models import Product


class ProductSerializer(serializers.ModelSerializer):
    class Meta:
        model = Product
        fields = '__all__'
