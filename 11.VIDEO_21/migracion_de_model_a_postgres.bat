
E:\projects_django\8.VIDEO_14>workon myproject
(MYPROJ~1) E:\projects_django\8.VIDEO_14>
(MYPROJ~1) E:\projects_django\8.VIDEO_14>
(MYPROJ~1) E:\projects_django\8.VIDEO_14>
(MYPROJ~1) E:\projects_django\8.VIDEO_14>
(MYPROJ~1) E:\projects_django\8.VIDEO_14>python manage.py makemigrations
No changes detected

(MYPROJ~1) E:\projects_django\8.VIDEO_14>python manage.py migrate
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

(MYPROJ~1) E:\projects_django\8.VIDEO_14>python manage.py shell
Python 3.7.5 (tags/v3.7.5:5c02a39a0b, Oct 15 2019, 00:11:34) [MSC v.1916 64 bit (AMD64)] on win32
Type "help", "copyright", "credits" or "license" for more information.
(InteractiveConsole)
>>> from gestionPedidos.models import Clientes
>>> cli1=Clientes(nombre='José', direccion='Santa Lucía', tfno='04242291816')
>>> cli1.save()
>>> cli2=Clientes(nombre='Juan', direccion='Santa Teresa', tfno='04263944474')
>>> cli2.save()
>>> cli1.email='ing.jggomeza@gmail.com'
>>> cli1.save()
>>> cli2.email='josegomezjose18@gmail.com'
>>> cli2.save()
>>>