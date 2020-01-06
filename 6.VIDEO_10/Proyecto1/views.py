# -*- coding: utf-8 -*-
import datetime

from django.http import HttpResponse # Importamos el modulo HttpResponse
from django.shortcuts import render
from django.template import Context
from django.template import Template
from django.template import loader

class Persona(object):
	"""docstring for Persona"""
	def __init__(self, nombre, apellido):
		self.nombre = nombre
		self.apellido = apellido


def saludo(request): # primera vista
	p1 = Persona("Jose", "Gómez")
	# nombre = "José"
	# apellido = "Gómez"

	temas_del_curso = ["Plantillas", "Modelos", "Formularios", "Vistas", "Despliegue"]

	fecha_actual = datetime.datetime.now()
	# doc_externo = open("C:/xampp/htdocs/APLICACIONES_DE_PYTHON/projectsDjango/4.VIDEO_8/Proyecto1/template/template1.html")
	# plt = Template(doc_externo.read()) # Creacion de un objeto template
	# doc_externo.close() # Se cierra el documento para que no se consuman recursos innecesarios
	# doc_externo = loader.get_template('template1.html')

	# ctx = Context({"nombre_persona": p1.nombre, "apellido_persona": p1.apellido, "fecha_actual": fecha_actual, "temas":temas_del_curso}) # Contexto se usa para pasar valores y funciones del template
	ctx = {"nombre_persona": p1.nombre, "apellido_persona": p1.apellido, "fecha_actual": fecha_actual, "temas":temas_del_curso} # Contexto se usa para pasar valores y funciones del template

	# documento = plt.render(ctx)
	# documento = doc_externo.render(ctx)
	# return HttpResponse(documento)
	return render(request, 'template1.html', ctx)

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

def cursoC(request):
	fechaActual = datetime.datetime.now()
	return render(request, 'CursoC.html', {"dameFecha":fechaActual})

def cursoCss(request):
	fechaActual = datetime.datetime.now()
	return render(request, 'CursoCss.html', {"dameFecha":fechaActual})