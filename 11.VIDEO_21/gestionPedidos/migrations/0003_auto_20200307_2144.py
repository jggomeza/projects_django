# Generated by Django 2.2.7 on 2020-03-08 02:14

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('gestionPedidos', '0002_auto_20200307_2123'),
    ]

    operations = [
        migrations.AlterField(
            model_name='articulos',
            name='nombre',
            field=models.CharField(max_length=30, verbose_name='Nombre articulo'),
        ),
        migrations.AlterField(
            model_name='articulos',
            name='precio',
            field=models.IntegerField(verbose_name='Precio articulo'),
        ),
        migrations.AlterField(
            model_name='articulos',
            name='seccion',
            field=models.CharField(max_length=20, verbose_name='Sección'),
        ),
        migrations.AlterField(
            model_name='clientes',
            name='direccion',
            field=models.CharField(max_length=50, verbose_name='Dirección'),
        ),
        migrations.AlterField(
            model_name='clientes',
            name='email',
            field=models.EmailField(blank=True, max_length=254, null=True, verbose_name='Correo'),
        ),
        migrations.AlterField(
            model_name='clientes',
            name='nombre',
            field=models.CharField(max_length=30, verbose_name='Nombre cliente'),
        ),
        migrations.AlterField(
            model_name='clientes',
            name='tfno',
            field=models.CharField(max_length=11, verbose_name='Telefono'),
        ),
        migrations.AlterField(
            model_name='pedidos',
            name='entregado',
            field=models.BooleanField(verbose_name='Estado del Pedido'),
        ),
        migrations.AlterField(
            model_name='pedidos',
            name='fecha',
            field=models.DateField(verbose_name='Fecha de solicitud'),
        ),
        migrations.AlterField(
            model_name='pedidos',
            name='numero',
            field=models.IntegerField(verbose_name='Número de Pedido'),
        ),
    ]