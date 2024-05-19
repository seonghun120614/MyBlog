from rest_framework import serializers
from .models import CSVFile


class CSVFileSerializer(serializers.ModelSerializer):
  class Meta:
    model = CSVFile
    exclude = ['uploaded']