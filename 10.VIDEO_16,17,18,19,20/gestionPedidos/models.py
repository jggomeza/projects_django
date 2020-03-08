from django.db import models

# Create your models here.

class Clientes(models.Model):
	"""docstring for Clientes"""
	nombre=models.CharField(max_length=30, verbose_name="Nombre cliente")
	direccion=models.CharField(max_length=50, verbose_name="Dirección")
	email=models.EmailField(blank=True, null=True, verbose_name="Correo") # The parameters blank=True, null=True for not required
	tfno=models.CharField(max_length=11, verbose_name="Telefono")

	def __str__(self):
		# return "El nombre es %s, su direccion es %s, su email es %s y su telefono es %s" % (self.nombre, self.direccion, self.email, self.tfno)
		return self.nombre

class Articulos(models.Model):
	"""docstring for Articulos"""
	nombre=models.CharField(max_length=30, verbose_name="Nombre articulo")
	seccion=models.CharField(max_length=20, verbose_name="Sección")
	precio=models.IntegerField(verbose_name="Precio articulo")

	def __str__(self):
		# return "El nombre es %s, la seccion es %s y el precio es %s" % (self.nombre, self.seccion, self.precio)
		return self.nombre

class Pedidos(models.Model):
	"""docstring for Pedidos"""
	numero=models.IntegerField(verbose_name="Número de Pedido")
	fecha=models.DateField(verbose_name="Fecha de solicitud")
	entregado=models.BooleanField(verbose_name="Estado del Pedido")

	def __str__(self):
		# return "Su numero es %s, la fecha es %s y su estado es %s" % (self.numero, self.fecha, self.entregado)
		return str(self.numero)



		




