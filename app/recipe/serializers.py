from rest_framework import serializers
import sys
sys.path.append('../')
from core.models import Tag

class TagSerializer(serializers.ModelSerializer):

    class Meta:
        model = Tag
        fields = ('id', 'name')
        read_only_field = ('id',)
