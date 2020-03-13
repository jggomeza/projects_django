
Windows 7@Windows7-PC MINGW64 /e/projects_django (master)
$ django-admin startproject TiendaOnline

Windows 7@Windows7-PC MINGW64 /e/projects_django (master)
$ mv TiendaOnline 7.VIDEO_11,12

Windows 7@Windows7-PC MINGW64 /e/projects_django (master)
$ cd 7.VIDEO_11,12/

Windows 7@Windows7-PC MINGW64 /e/projects_django/7.VIDEO_11,12 (master)
$ python manage.py startapp gestionPedidos

Windows 7@Windows7-PC MINGW64 /e/projects_django/7.VIDEO_11,12 (master)
$ python manage.py check gestionPedidos
System check identified no issues (0 silenced).

Windows 7@Windows7-PC MINGW64 /e/projects_django/7.VIDEO_11,12 (master)
$ python manage.py makemigrations
Migrations for 'gestionPedidos':
  gestionPedidos\migrations\0001_initial.py
    - Create model Articulos
    - Create model Clientes
    - Create model Pedidos

Windows 7@Windows7-PC MINGW64 /e/projects_django/7.VIDEO_11,12 (master)
$ python manage.py sqlmigrate gestionPedidos 0001
BEGIN;
--
-- Create model Articulos
--
CREATE TABLE "gestionPedidos_articulos" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "nombre" varchar(30) NOT NULL, "seccion" varchar(20) NOT NULL, "precio" integer NOT NULL);
--
-- Create model Clientes
--
CREATE TABLE "gestionPedidos_clientes" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "nombre" varchar(30) NOT NULL, "direccion" varchar(50) NOT NULL, "email" varchar(254) NOT NULL, "tfno" varchar(11) NOT NULL);
--
-- Create model Pedidos
--
CREATE TABLE "gestionPedidos_pedidos" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "numero" integer NOT NULL, "fecha" date NOT NULL, "entregado" bool NOT NULL);
COMMIT;

Windows 7@Windows7-PC MINGW64 /e/projects_django/7.VIDEO_11,12 (master)
$ python manage.py migrate
Operations to perform:
  Apply all migrations: admin, auth, contenttypes, gestionPedidos, sessions
Running migrations:
  Applying contenttypes.0001_initial... OK
  Applying auth.0001_initial... OK
  Applying admin.0001_initial... OK
  Applying admin.0002_logentry_remove_auto_add... OK
  Applying admin.0003_logentry_add_action_flag_choices... OK
  Applying contenttypes.0002_remove_content_type_name... OK
  Applying auth.0002_alter_permission_name_max_length... OK
  Applying auth.0003_alter_user_email_max_length... OK
  Applying auth.0004_alter_user_username_opts... OK
  Applying auth.0005_alter_user_last_login_null... OK
  Applying auth.0006_require_contenttypes_0002... OK
  Applying auth.0007_alter_validators_add_error_messages... OK
  Applying auth.0008_alter_user_username_max_length... OK
  Applying auth.0009_alter_user_last_name_max_length... OK
  Applying auth.0010_alter_group_name_max_length... OK
  Applying auth.0011_update_proxy_permissions... OK
  Applying gestionPedidos.0001_initial... OK
  Applying sessions.0001_initial... OK

Windows 7@Windows7-PC MINGW64 /e/projects_django/7.VIDEO_11,12 (master)
$ python manage.py shell
Python 3.7.5 (tags/v3.7.5:5c02a39a0b, Oct 15 2019, 00:11:34) [MSC v.1916 64 bit (AMD64)] on win32
Type "help", "copyright", "credits" or "license" for more information.

Windows 7@Windows7-PC MINGW64 /e/projects_django/7.VIDEO_11,12 (master)
$ cd ..

