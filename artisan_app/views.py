from django.shortcuts import render
from .models import Team
#------------------------HOME VIEW-----------------------------------------HOME
def home_view(request):
    template = 'artisan_app/index_imageParallax.html'
    return render(request, template, {})

#------------------------ABOUT VIEW----------------------------------------ABOUT
def about_view(request):
    template = 'artisan_app/about.html'
    team = Team.objects.all()
    context = {
        "team":team
    }

    return render(request, template, context)

#------------------------BLOG VIEW-----------------------------------------BLOG
def blog_view(request):
    template = 'artisan_app/blog.html'
    return render(request, template, {})

#------------------------BLOG POST VIEW--------------------------------BLOG POST
def blog_post_view(request):
    template = 'artisan_app/blog_post.html'
    return render(request, template, {})

#------------------------CONTACT VIEW------------------------------------CONTACT
def contacts_view(request):
    template = 'artisan_app/contacts.html'
    return render(request, template, {})

#------------------------MENU VIEW------------------------------------------MENU
def menu_view(request):
    template = 'artisan_app/menu_image.html'
    return render(request, template, {})

#------------------------GALLERY VIEW------------------------------------GALLERY
def gallery_view(request):
    template = 'artisan_app/gallery.html'
    return render(request, template, {})

#------------------------EVENTS VIEW------------------------------------GALLERY
def events_view(request):
    template = 'artisan_app/events.html'
    return render(request, template, {})
