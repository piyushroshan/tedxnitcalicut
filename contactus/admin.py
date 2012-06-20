from django.contrib import admin
from contactus.models import contactform

class ContactformAdmin(admin.ModelAdmin):
	list_display = ('name','phone','email','subject','message')
	search_feilds = ('name','phone','email')

admin.site.register(contactform,ContactformAdmin)
