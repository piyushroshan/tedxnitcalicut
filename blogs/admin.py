from django.contrib import admin
from django import forms
from django.db.models import get_model
from django.conf import settings
from django.utils.safestring import mark_safe
from blogs.models import *
from django.core.urlresolvers import reverse
from django.contrib.auth.models import User
from tinymce.widgets import TinyMCE

'''class TinyMCEFlatPageAdmin(FlatPageAdmin):

	def formfield_for_dbfield(self, db_field, **kwargs):
		if db_field.name in ('body', 'content'):
			return db_field.formfield(widget=TinyMCE(attrs={'cols': 100, 'rows': 30}, mce_attrs={'external_link_list_url': reverse('tinymce.views.flatpages_link_list')},
			))
		return super(TinyMCEFlatPageAdmin, self).formfield_for_dbfield(db_field, **kwargs)
	class Media:
		js = ('js/tiny_mce/tiny_mce.js',
		'js/tiny_mce/textareas.js',)
'''


class AdvancedEditor(forms.Textarea):
	class Media:
		js = ('js/tiny_mce/textareas.js',
			'js/tiny_mce/tiny_mce.js')
		def __init__(self, language=None, attrs=None):
			self.language = language or settings.LANGUAGE_CODE[:2]
			self.attrs = {'class': 'advancededitor'}
			if attrs: self.attrs.update(attrs)
			super(AdvancedEditor, self).__init__(attrs)

		def render(self, name, value, attrs=None):
			rendered = super(AdvancedEditor, self).render(name, value, attrs)
			return rendered + mark_safe(u'''
			&lt;script type="text/javascript"&gt;
			tinyMCE.init({
				mode: "textareas",
				theme: "advanced",
				plugins: "advhr,table,emotions,media,insertdatetime,directionality",
				theme_advanced_toolbar_align: "left",
				theme_advanced_toolbar_location: "top",
				theme_advanced_buttons1:"bold,italic,underline,strikethrough,sub,sup,separator,justifyleft,justifycenter,justifyright,justifyfull,separator,formatselect,fontselect,fontsizeselect",
				theme_advanced_buttons2:"bullist,numlist,outdent,indent,ltr,rtl,separator,link,unlink,anchor,image,separator,table,insertdate,inserttime,advhr,emotions,media,charmap,separator,undo,redo",
				theme_advanced_buttons3: "",
				content_css: "images/style.css",
				height: "350px",
				width: "653px"
			});
			&lt;/script&gt;''')


class BlogpostAdmin(admin.ModelAdmin):
	list_display = ('title','name','email','body','created')
	search_feilds = ('name','email')
	exclude = ['name']
	def save_model(self, request, obj, form, change):
		if obj.id is None:
			obj.user_id = request.user
			obj.save()
		obj.name = obj.user_id.get_full_name()
		obj.email = obj.user_id.email
		obj.save()

	def formfield_for_dbfield(self, db_field, **kwargs):
			if db_field.name in ('body', 'content'):
				return db_field.formfield(widget=TinyMCE(attrs={'cols': 100, 'rows': 30},mce_attrs={'external_link_list_url': reverse('tinymce.views.flatpages_link_list')},
			))
			return super(BlogpostAdmin, self).formfield_for_dbfield(db_field, **kwargs)
			
			




class CommentAdmin(admin.ModelAdmin):
	list_display = ['post','name','created','body']


admin.site.register(Comment, CommentAdmin)
admin.site.register(Blogpost , BlogpostAdmin)
