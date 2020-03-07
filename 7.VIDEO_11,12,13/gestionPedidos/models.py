from django.db import models

# Create your models here.

class Clientes(models.Model):
	"""docstring for Clientes"""
	nombre=models.CharField(max_length=30)
	direccion=models.CharField(max_length=50)
	email=models.EmailField()
	tfno=models.CharField(max_length=11)

class Articulos(models.Model):
	"""docstring for Articulos"""
	nombre=models.CharField(max_length=30)
	seccion=models.CharField(max_length=20)
	precio=models.IntegerField()

class Pedidos(models.Model):
	"""docstring for Pedidos"""
	numero=models.IntegerField()
	fecha=models.DateField()
	entregado=models.BooleanField()



		




