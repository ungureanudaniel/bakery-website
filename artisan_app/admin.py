from django.contrib import admin
from .models import Team, Gallery, Menu, RecipeCategory, Slogan, Review, Event, BlogPost, BlogCategory, Story, Comment, NewsletterUser, SendEmail, SendEmailFooter, OurFact, ContactData

# , SendEmail, SendEmailFooter

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
     list_filter = ('category', 'recipe_name', 'price_tag', 'featured')
     search_fields = ('category', 'recipe_name', 'price_tag', 'featured')

class ReviewAdmin(admin.ModelAdmin):
     list_display =  ['author', 'content', 'date_posted']


class EventAdmin(admin.ModelAdmin):
     list_display =  ['title', 'description', 'start_date', 'end_date', 'tax', 'image']

class BlogPostAdmin(admin.ModelAdmin):
     list_display =  ['id', 'title', 'get_description', 'image', 'category', 'featured', 'slug', 'created_date', 'status', ]
     def get_description(self, obj):
        return obj.text[:100]
     get_description.short_description = "description"



class BlogCategoryAdmin(admin.ModelAdmin):
     list_display =  ['name']

class StoryAdmin(admin.ModelAdmin):
     list_display =  ['our_story', 'about_us_page', 'motto', 'signature', 'traditions', 'traditions_image', 'service', 'service_image', 'history', 'history_image']

class OurFactAdmin(admin.ModelAdmin):
     list_display =  ['category_en', 'category_ro', 'figures']

class CommentAdmin(admin.ModelAdmin):
     list_display =  ['name', 'timestamp', 'email', 'text', 'post', 'active']
     list_filter = ('post', 'active', 'timestamp')
     search_fields = ('name', 'email', 'text')
     actions = ['approve_comments']

     def approve_comments(self, request, queryset):
        queryset.update(active=True)

class NewsletterUserAdmin(admin.ModelAdmin):
    list_display =  ['email', 'conf_num', 'confirmed', 'timestamp']
#

class SendEmailAdmin(admin.ModelAdmin):
    list_display =  ['subscribers', 'title', 'body', 'author', 'footer', 'timestamp']

class SendEmailFooterAdmin(admin.ModelAdmin):
    list_display =  ['version']

class ContactDataAdmin(admin.ModelAdmin):
     list_display = ('contact_subject', 'contact_author', 'contact_email', 'contact_message', 'timestamp')
     list_filter = ('contact_author', 'contact_email', 'timestamp')
     search_fields = ('contact_author', 'contact_email')

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
admin.site.register(Review, ReviewAdmin)
admin.site.register(Event, EventAdmin)
admin.site.register(BlogPost, BlogPostAdmin)
admin.site.register(BlogCategory, BlogCategoryAdmin)
admin.site.register(Story, StoryAdmin)
admin.site.register(OurFact, OurFactAdmin)
admin.site.register(Comment, CommentAdmin)
admin.site.register(NewsletterUser, NewsletterUserAdmin)
admin.site.register(SendEmail, SendEmailAdmin)
admin.site.register(SendEmailFooter, SendEmailFooterAdmin)
admin.site.register(ContactData, ContactDataAdmin)



 # admin.site.register(Contacts, ContactsAdmin)
# admin.site.register(Blog, BlogAdmin)
# admin.site.register(About, AboutAdmin)
