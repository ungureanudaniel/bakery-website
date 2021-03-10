from django.contrib import admin
from .models import Team, Gallery, Menu, RecipeCategory, Slogan, Comments, Event

class TeamAdmin(admin.ModelAdmin):
     list_display =  ('first_name', 'last_name', 'photo')

class GalleryAdmin(admin.ModelAdmin):
     list_display =  ['photo', 'type']

class SloganAdmin(admin.ModelAdmin):
     list_display =  ['brand', 'text']

class RecipeCategoryAdmin(admin.ModelAdmin):
     list_display =  ['title', 'slug']

class MenuAdmin(admin.ModelAdmin):
     list_display =  ['recipe_name', 'slug', 'description', 'price_tag', 'category', 'photo', 'featured']

class CommentsAdmin(admin.ModelAdmin):
     list_display =  ['content', 'date_posted']


class EventAdmin(admin.ModelAdmin):
     list_display =  ['title', 'description', 'start_date', 'end_date', 'tax']


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
admin.site.register(Gallery, GalleryAdmin)
admin.site.register(RecipeCategory, RecipeCategoryAdmin)
admin.site.register(Menu, MenuAdmin)
admin.site.register(Slogan, SloganAdmin)
admin.site.register(Comments, CommentsAdmin)
admin.site.register(Event, EventAdmin)




# admin.site.register(Contacts, ContactsAdmin)
# admin.site.register(Blog, BlogAdmin)
# admin.site.register(About, AboutAdmin)
