from django.contrib import admin
from .models import Team

class TeamAdmin(admin.ModelAdmin):
     list_display =  ('first_name', 'last_name', 'photo')

# class RecipeAdmin(admin.ModelAdmin):
#      list_display = ('id', 'title', 'status', 'category', 'created_date',)
#      list_filter = ('status',)
#      search_fields = ('title', 'text',)
# class ContactsAdmin(admin.ModelAdmin):
#      list_display = ('id', 'title', 'status', 'category', 'created_date',)
#      list_filter = ('status',)
#      search_fields = ('title', 'text',)
#
#
# class BlogAdmin(admin.ModelAdmin):
#      list_display = ('id', 'title', 'status', 'category', 'created_date',)
#      list_filter = ('status',)
#      search_fields = ('title', 'text',)
#
# class AboutAdmin(admin.ModelAdmin):
#      list_display = ('id', 'title', 'status', 'category', 'created_date',)
#      list_filter = ('status',)
#      search_fields = ('title', 'text',)

admin.site.register(Team, TeamAdmin)
# admin.site.register(Contacts, ContactsAdmin)
# admin.site.register(Blog, BlogAdmin)
# admin.site.register(About, AboutAdmin)
