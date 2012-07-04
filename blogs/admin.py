from django.contrib import admin
from blogs.models import *


class BlogpostAdmin(admin.ModelAdmin):
	list_display = ('title','name','email','body','created')
	search_feilds = ('name','email')

class CommentAdmin(admin.ModelAdmin):
	list_display = ['post','name','created','body']


admin.site.register(Comment,CommentAdmin)
admin.site.register(Blogpost , BlogpostAdmin)
