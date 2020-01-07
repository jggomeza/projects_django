# -*- coding: utf-8 -*-
from django.http import HttpResponse # Importamos el modulo HttpResponse
import datetime
from django.template import Template, Context

class Persona(object):
	"""docstring for Persona"""
	def __init__(self, nombre, apellido):
		self.nombre = nombre
		self.apellido = apellido


def saludo(request): # primera vista
	p1 = Persona("Ing. José", "Gómez")
	# nombre = "José"
	# apellido = "Gómez"

	fecha_actual = datetime.datetime.now()
	# doc_externo = open("C:/xampp/htdocs/APLICACIONES_DE_PYTHON/projectsDjango/2.VIDEO_5,6/Proyecto1/template/template1.html")
	doc_externo = open("Proyecto1/template/template1.html")
	
	# doc_externo = open("/home/jgomeza/Documentos/ARCHIVOS/APLICACIONES_DE_PYTHON/projectsDjango/2.VIDEO_5,6/Proyecto1/template/template1.html")

	plt = Template(doc_externo.read()) # Creacion de un objeto template
	doc_externo.close() # Se cierra el documento para que no se consuman recursos innecesarios

	ctx = Context({"nombre_persona": p1.nombre, "apellido_persona": p1.apellido, "fecha_actual": fecha_actual}) # Contexto se usa para pasar valores y funciones del template

	documento = plt.render(ctx)
	return HttpResponse(documento)

def despedida(request): # Segunda vista
	return HttpResponse("Una despedida al estilo de Django <a href='/fecha'>Fecha</a>")

def dameFecha(request): # Tercera vista
	fechaActual = datetime.datetime.now()

	documento = """
	<!DOCTYPE html>
	<html lang="es">
	<head>
		<meta charset="UTF-8">
		<title>Curso de Django Pildora Informaticas</title>
	</head>
	<body>
		<h1>Fecha y Hora Actuales %s</h1>
		<a href="/edades/23/2019">Edades</a>
	</body>
	</html>
	""" %fechaActual

	return HttpResponse(documento)

def calculaEdad(request, edad, anio): # Cuarta vista
	# edadActual = 23
	periodo = anio - 2019
	edadFutura = edad + periodo

	documento = """
	<!DOCTYPE html>
	<html lang="es">
	<head>
		<meta charset="UTF-8">
		<title>Curso de Django Pildora Informaticas</title>
	</head>
	<body>
		<h2>En el año %s tendras %s años</h2>
		<a href="/saludo">Saludo</a>
	</body>
	</html>
	""" %(anio, edadFutura)

	return HttpResponse(documento)