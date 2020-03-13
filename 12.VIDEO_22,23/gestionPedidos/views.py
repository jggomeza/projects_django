from django.shortcuts import render
from django.http import HttpResponse
from gestionPedidos.models import Articulos

# Create your views here.

def busqueda_productos(request):
	return render(request, "busqueda_productos.html")

def buscar(request):
	if request.GET['producto']:
		# mensaje='Articulo buscado: %s' %request.GET['producto']
		producto=request.GET['producto']

		if len(producto)>20:
			mensaje="El texto insertado es demasiado largo!"
		else:
			articulos=Articulos.objects.filter(seccion__icontains=producto) # SELECT * FROM articulos where like '%productos%'

			return render(request, "resultados_busqueda.html", {"articulos":articulos, "query":producto})
	else:
		mensaje='No has introducido nada'

	return HttpResponse(mensaje)

def contacto(request):
	if request.method=="POST":
		return render(request, "gracias.html")
	return render(request, "contacto.html")
