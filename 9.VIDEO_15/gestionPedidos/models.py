from django.db import models

# Create your models here.

class Clientes(models.Model):
	"""docstring for Clientes"""
	nombre=models.CharField(max_length=30)
	direccion=models.CharField(max_length=50)
	email=models.EmailField()
	tfno=models.CharField(max_length=11)

	def __str__(self):
		return "El nombre es %s, su direccion es %s, su email es %s y su telefono es %s" % (self.nombre, self.direccion, self.email, self.tfno)

class Articulos(models.Model):
	"""docstring for Articulos"""
	nombre=models.CharField(max_length=30)
	seccion=models.CharField(max_length=20)
	precio=models.IntegerField()

	def __str__(self):
		return "El nombre es %s, la seccion es %s y el precio es %s" % (self.nombre, self.seccion, self.precio)

class Pedidos(models.Model):
	"""docstring for Pedidos"""
	numero=models.IntegerField()
	fecha=models.DateField()
	entregado=models.BooleanField()

	def __str__(self):
		return "Su numero es %s, la fecha es %s y su estado es %s" % (self.numero, self.fecha, self.entregado)



		




