from django.contrib import admin

# Register your models here.

# from gestionPedidos.models import Clientes
# from gestionPedidos.models import Articulos
# from gestionPedidos.models import Pedidos
from gestionPedidos.models import Clientes, Articulos, Pedidos

class ClientesAdmin(admin.ModelAdmin):
	"""docstring for Clientes"""
	list_display = ('nombre', 'direccion', 'email', 'tfno')
	search_fields = ['nombre', 'tfno']
	list_filter = ['direccion']

class ArticulosAdmin(admin.ModelAdmin):
	"""docstring for Clientes"""
	list_display = ('nombre', 'seccion', 'precio')
	search_fields = ['nombre', 'seccion']
	list_filter = ['seccion']

class PedidosAdmin(admin.ModelAdmin):
	"""docstring for Clientes"""
	list_display = ('numero', 'fecha', 'entregado')
	search_fields = ['numero', 'entregado']
	list_filter = ['fecha']
	date_hierarchy="fecha" # Agrega las rutas tipo migas de pan

admin.site.register(Clientes, ClientesAdmin)
admin.site.register(Articulos, ArticulosAdmin)
admin.site.register(Pedidos, PedidosAdmin)


