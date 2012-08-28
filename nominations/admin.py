from django.contrib import admin
from nominations.models import nominee
from django.core.urlresolvers import reverse
from django.contrib.flatpages.admin import FlatPageAdmin
from django.contrib.flatpages.models import FlatPage
from tinymce.widgets import TinyMCE
class nomineeAdmin(admin.ModelAdmin):
	list_display=('fullname','email','phone','description','support','reference1','nominator_name','nominator_email','nominator_phone',)
	def formfield_for_dbfield(self, db_field, **kwargs):
		if db_field.name in ('description', 'support','reference1'):
			return db_field.formfield(widget=TinyMCE(attrs={'cols': 80, 'rows': 10},mce_attrs={'external_link_list_url': reverse('tinymce.views.flatpages_link_list')},
			))
		return super(nomineeAdmin, self).formfield_for_dbfield(db_field, **kwargs)
	class Media:
		js = ('js/tiny_mce/textareas.js',
		'js/tiny_mce/tiny_mce.js')

admin.site.register(nominee,nomineeAdmin)
