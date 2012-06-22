from django.contrib import admin
from blogs.models import *


class BlogpostAdmin(admin.ModelAdmin):
	list_fields = ('title','name','email','body','created')
	search_feilds = ('name','email')

class CommentAdmin(admin.ModelAdmin):
	display_field = ['post','name','created']


admin.site.register(Comment,CommentAdmin)
admin.site.register(Blogpost , BlogpostAdmin)
