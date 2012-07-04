from django.contrib import admin
from nominations.models import nominee

class nomineeAdmin(admin.ModelAdmin):
	list_display=('fname','lname','email','phone','description','support','reference1','reference2','nominator')

admin.site.register(nominee,nomineeAdmin)

