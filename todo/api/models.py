# models.py
from django.db import models
class Todo(models.Model):
    task = models.CharField(max_length=60)
    completed = models.BooleanField()
    def __str__(self):
        return self.task