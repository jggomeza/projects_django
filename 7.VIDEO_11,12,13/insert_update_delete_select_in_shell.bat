
E:\projects_django\7.VIDEO_11,12>python manage.py shell
Python 3.7.5 (tags/v3.7.5:5c02a39a0b, Oct 15 2019, 00:11:34) [MSC v.1916 64 bit (AMD64)] on win32
Type "help", "copyright", "credits" or "license" for more information.
(InteractiveConsole)
>>>
>>>
>>>
>>> from gestionPedidos.models import Articulos ----> Importar el modelo a usar
>>>
>>>
>>> art1=Articulos(nombre='mesa', seccion='decoracion', precio=90) ----> Crear una variable que almacene el registro a insertar
>>> art1.save() ----> Ejecuta el insert
>>>
>>>
>>> art2=Articulos(nombre='camisa', seccion='confeccion', precio=75) ----> Crear una variable que almacene el registro a insertar
>>> art2.save() ----> Ejecuta el insert
>>>
>>>
>>> art3=Articulos.objects.create(nombre='taladro', seccion='ferreteria', precio=65) ----> Crear una variable que almacene el registro a insertar e inserta de una vez el registro
>>>
>>>
>>> art2.precio=95 ----> Modifica el campo precio
>>> art2.save() ----> Ejecuta el update
>>>
>>>
>>> art4=Articulos.objects.get(id=2) ----> Reliza una consulta y selecciona el articulo con id=2
>>> art4.delete() ----> Ejecuta el delete
(1, {'gestionPedidos.Articulos': 1}) ----> Salida
>>>
>>>
>>> lista=Articulos.objects.all() ----> Selecciona todos los registros
>>> lista ----> Imprime la lista
<QuerySet [<Articulos: Articulos object (1)>, <Articulos: Articulos object (3)>]> ----> Salida
>>>
>>>
>>>
>>> lista.query.__str__() ----> Muestra el query usado para seleccionar los registros
'SELECT "gestionPedidos_articulos"."id", "gestionPedidos_articulos"."nombre", "gestionPedidos_articulos"."seccion", "gestionPedidos_articulos"."precio" FROM "gestionPedidos_articulos"'
>>>