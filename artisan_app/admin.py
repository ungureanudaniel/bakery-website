from django.contrib import admin
from .models import Team, Gallery, Menu, RecipeCategory, Slogan, Comment, Event, BlogPost, BlogCategory, Story, Fact

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

class CommentAdmin(admin.ModelAdmin):
     list_display =  ['author', 'content', 'date_posted', 'tags']


class EventAdmin(admin.ModelAdmin):
     list_display =  ['title', 'description', 'start_date', 'end_date', 'tax', 'image']

class BlogPostAdmin(admin.ModelAdmin):
     list_display =  ['title', 'text', 'image', 'category', 'comment_count', 'featured', 'slug', 'created_date', 'status']

class BlogCategoryAdmin(admin.ModelAdmin):
     list_display =  ['name']

class StoryAdmin(admin.ModelAdmin):
     list_display =  ['our_story', 'traditions', 'traditions_image', 'service', 'service_image', 'history', 'history_image']

class FactAdmin(admin.ModelAdmin):
     list_display =  ['category_en', 'category_ro', 'figures']

# class RecipeAdmin(admin.ModelAdmin):
#      list_display = ('id', 'title', 'status', 'category', 'created_date',)
#      list_filter = ('status',)
#      search_fields = ('title', 'text',)
# class BlogAdmin(admin.ModelAdmin):
#      list_display = ('id', 'title', 'status', 'category', 'created_date',)
#      list_filter = ('status',)
#      search_fields = ('title', 'text',)
#

admin.site.register(Team, TeamAdmin)
admin.site.register(Gallery, GalleryAdmin)
admin.site.register(RecipeCategory, RecipeCategoryAdmin)
admin.site.register(Menu, MenuAdmin)
admin.site.register(Slogan, SloganAdmin)
admin.site.register(Comment, CommentAdmin)
admin.site.register(Event, EventAdmin)
admin.site.register(BlogPost, BlogPostAdmin)
admin.site.register(BlogCategory, BlogCategoryAdmin)
admin.site.register(Story, StoryAdmin)
admin.site.register(Fact, FactAdmin)






# admin.site.register(Contacts, ContactsAdmin)
# admin.site.register(Blog, BlogAdmin)
# admin.site.register(About, AboutAdmin)
