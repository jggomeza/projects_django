from django.http import HttpResponse # Importamos el modulo HttpResponse
import datetime

def saludo(request): # primera vista
	
	documento = """
	<!DOCTYPE html>
	<html lang="es">
	<head>
		<meta charset="UTF-8">
		<title>Curso de Django Pildora Informaticas</title>
	</head>
	<body>
		<h1>Hola alumnos esta es nuestra primera página con Django</h1>
		<a href="/nosveremos">Nos veremos</a>
	</body>
	</html>
	"""

	return HttpResponse(documento)

def despedida(request): # Segunda vista
	return HttpResponse("Hasta luego alumnos de Django <a href='/fecha'>Fecha</a>")

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