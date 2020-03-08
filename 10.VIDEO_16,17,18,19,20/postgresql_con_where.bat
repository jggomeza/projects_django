
E:\projects_django\9.VIDEO_15>workon myproject
(MYPROJ~1) E:\projects_django\9.VIDEO_15>python manage.py makemigrations
No changes detected

(MYPROJ~1) E:\projects_django\9.VIDEO_15>python manage.py migrate
Operations to perform:
  Apply all migrations: admin, auth, contenttypes, gestionPedidos, sessions
Running migrations:
  No migrations to apply.

(MYPROJ~1) E:\projects_django\9.VIDEO_15>python manage.py shell
Python 3.7.5 (tags/v3.7.5:5c02a39a0b, Oct 15 2019, 00:11:34) [MSC v.1916 64 bit (AMD64)] on win32
Type "help", "copyright", "credits" or "license" for more information.
(InteractiveConsole)
>>> from gestionPedidos.models import Clientes
>>>
>>>
>>> Clientes.objects.filter(nombre='José') rem select * from clientes where nombre='José';
<QuerySet [<Clientes: El nombre es José, su direccion es Santa Lucía, su email es ing.jggomeza@gmail.com y su telefono es 04242291816>, <Clientes: El nombre es José, su direccion es Charallave, su email es jose_1gomez@hotmail.com y su telefono es 04242291816>]>
>>>
>>>
>>> Clientes.objects.filter(nombre='Juan') rem select * from clientes where nombre='Juan';
<QuerySet [<Clientes: El nombre es Juan, su direccion es Santa Teresa, su email es josegomezjose18@gmail.com y su telefono es 04263944474>]>
>>>
>>>
>>> Clientes.objects.filter(nombre='José', direccion='Santa Lucía') rem select * from clientes where nombre='José' and direccion='Santa Lucía';
<QuerySet [<Clientes: El nombre es José, su direccion es Santa Lucía, su email es ing.jggomeza@gmail.com y su telefono es 04242291816>]>
>>>
>>>
>>> Clientes.objects.filter(tfno='04242291816') rem select * from clientes where tfno='04242291816';
<QuerySet [<Clientes: El nombre es José, su direccion es Santa Lucía, su email es ing.jggomeza@gmail.com y su telefono es 04242291816>, <Clientes: El nombre es José, su direccion es Charallave, su email es jose_1gomez@hotmail.com y su telefono es 04242291816>]>
>>>
>>>
>>> Clientes.objects.filter(nombre='José', id__gte=1) rem select * from clientes where nombre='José' and id>=1;
<QuerySet [<Clientes: El nombre es José, su direccion es Santa Lucía, su email es ing.jggomeza@gmail.com y su telefono es 04242291816>, <Clientes: El nombre es José, su direccion es Charallave, su email es jose_1gomez@hotmail.com y su telefono es 04242291816>]>
>>>
>>>
>>> Clientes.objects.filter(nombre='José', id__gte=3) rem select * from clientes where nombre='José' and id>=3;
<QuerySet [<Clientes: El nombre es José, su direccion es Charallave, su email es jose_1gomez@hotmail.com y su telefono es 04242291816>]>
>>>
>>>
>>> Clientes.objects.filter(nombre='José', id__gte=2) rem select * from clientes where nombre='José' and id>=2;
<QuerySet [<Clientes: El nombre es José, su direccion es Charallave, su email es jose_1gomez@hotmail.com y su telefono es 04242291816>]>
>>>
>>>
>>> Clientes.objects.filter(nombre='José', id__lte=0) rem select * from clientes where nombre='José' and id<=0;
<QuerySet []>
>>>
>>>
>>> Clientes.objects.filter(nombre='José', id__lte=1) rem select * from clientes where nombre='José' and id<=1;
<QuerySet [<Clientes: El nombre es José, su direccion es Santa Lucía, su email es ing.jggomeza@gmail.com y su telefono es 04242291816>]>
>>>
>>>
>>> Clientes.objects.filter(nombre='José', id__lte=2) rem select * from clientes where nombre='José' and id<=2;
<QuerySet [<Clientes: El nombre es José, su direccion es Santa Lucía, su email es ing.jggomeza@gmail.com y su telefono es 04242291816>]>
>>>
>>>
>>> Clientes.objects.filter(nombre='José', id__lte=3) rem select * from clientes where nombre='José' and id<=3;
<QuerySet [<Clientes: El nombre es José, su direccion es Santa Lucía, su email es ing.jggomeza@gmail.com y su telefono es 04242291816>, <Clientes: El nombre es José, su direccion es Charallave, su email es jose_1gomez@hotmail.com y su telefono es 04242291816>]>
>>>
>>>
>>> Clientes.objects.filter(nombre='José', id__lte=4) rem select * from clientes where nombre='José' and id<=4;
<QuerySet [<Clientes: El nombre es José, su direccion es Santa Lucía, su email es ing.jggomeza@gmail.com y su telefono es 04242291816>, <Clientes: El nombre es José, su direccion es Charallave, su email es jose_1gomez@hotmail.com y su telefono es 04242291816>]>
>>>
>>>
>>> Clientes.objects.filter(nombre='José', id__lte=5) rem select * from clientes where nombre='José' and id<=5;
<QuerySet [<Clientes: El nombre es José, su direccion es Santa Lucía, su email es ing.jggomeza@gmail.com y su telefono es 04242291816>, <Clientes: El nombre es José, su direccion es Charallave, su email es jose_1gomez@hotmail.com y su telefono es 04242291816>]>
>>>
>>>
>>> Clientes.objects.filter(id__gte=1) rem select * from clientes where id>=1;
<QuerySet [<Clientes: El nombre es José, su direccion es Santa Lucía, su email es ing.jggomeza@gmail.com y su telefono es 04242291816>, <Clientes: El nombre es Juan, su direccion es Santa Teresa, su email es josegomezjose18@gmail.com y su telefono es 04263944474>, <Clientes: El nombre es José, su direccion es Charallave, su email es jose_1gomez@hotmail.com y su telefono es 04242291816>]>
>>>
>>>
>>> Clientes.objects.filter(id__gte=2) rem select * from clientes where id>=2;
<QuerySet [<Clientes: El nombre es Juan, su direccion es Santa Teresa, su email es josegomezjose18@gmail.com y su telefono es 04263944474>, <Clientes: El nombre es José, su direccion es Charallave, su email es jose_1gomez@hotmail.com y su telefono es 04242291816>]>
>>>
>>>
>>> Clientes.objects.filter(id__gte=3) rem select * from clientes where id>=3;
<QuerySet [<Clientes: El nombre es José, su direccion es Charallave, su email es jose_1gomez@hotmail.com y su telefono es 04242291816>]>
>>>
>>>
>>> Clientes.objects.filter(id__gte=4) rem select * from clientes where id>=4;
<QuerySet []>
>>>
>>>
>>> Clientes.objects.filter(id__gte=1).order_by('id') rem select * from clientes where id>=1 order_by id;
<QuerySet [<Clientes: El nombre es José, su direccion es Santa Lucía, su email es ing.jggomeza@gmail.com y su telefono es 04242291816>, <Clientes: El nombre es Juan, su direccion es Santa Teresa, su email es josegomezjose18@gmail.com y su telefono es 04263944474>, <Clientes: El nombre es José, su direccion es Charallave, su email es jose_1gomez@hotmail.com y su telefono es 04242291816>]>
>>>
>>>
>>> Clientes.objects.filter(id__gte=1).order_by('-id')  rem select * from clientes where id>=1 order_by id des;
<QuerySet [<Clientes: El nombre es José, su direccion es Charallave, su email es jose_1gomez@hotmail.com y su telefono es 04242291816>, <Clientes: El nombre es Juan, su direccion es Santa Teresa, su email es josegomezjose18@gmail.com y su telefono es 04263944474>, <Clientes: El nombre es José, su direccion es Santa Lucía, su email es ing.jggomeza@gmail.com y su telefono es 04242291816>]>
>>>