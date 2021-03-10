from django.shortcuts import render
from .models import Team, Gallery, RecipeCategory, Menu, Slogan, Comments
from django.core.mail import send_mail, BadHeaderError
from django.http import HttpResponse, HttpResponseRedirect

#------------------------HOME VIEW-----------------------------------------HOME
def home_view(request):
    template = 'artisan_app/index_imageParallax.html'
    team = Team.objects.all()

    #--------------------fetch recipes per category-----------------------------
    recipe_categories = RecipeCategory.objects.all()
    #---------------------fetch recipes-----------------------------------------
    menu = Menu.objects.all()
    #----------------------brand name and slogans-------------------------------
    slogans = Slogan.objects.latest("timestamp")
    #---------------------get gallery pictures----------------------------------
    pictures = Gallery.objects.all()[:10]
    feat_pics = Menu.objects.filter(featured=True)
    #---------------------get website comments----------------------------------
    comm = Comments.objects.all()

    context = {
        "team":team,
        "recipe_categories": recipe_categories,
        "menu": menu,
        "pictures": pictures,
        "slogans": slogans,
        "comm": comm,
        "feat_pics": feat_pics,
    }
    #-----------------------CONTACT LOGIC---------------------------------------
    if request.method == "POST":
        message_name = request.POST.get('name')
        message_email = request.POST.get('email')
        message = request.POST.get('message')

        context["message_name"] = message_name
        messages.success(request, 'Am primit mesajul tau {} si vom raspunde cat de curand!'.format(message_name))
        return render(request, template, context)
        # if message and message_name and message_email:
        #     context["message_name"] = message_name
        #     try:
        #         send_mail(
        #         message_name,
        #         message,
        #         message_email,
        #         ['contact@artisanbakery.ro']
        #         )
        #     except BadHeaderError:
        #         return HttpResponse('Invalid header found.')
        #     return HttpResponseRedirect('/contact/thanks/')
        # else:
        #     return render(request, template, context)

    else:
        return render(request, template, context)

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

    #-----------------------CONTACT LOGIC---------------------------------------
    if request.method == "POST":
        message_name = request.POST.get('name')
        message_email = request.POST.get('email')
        message = request.POST.get('message')


        # if message and message_name and message_email:
        #     context["message_name"] = message_name
        #     try:
        #         send_mail(
        #         message_name,
        #         message,
        #         message_email,
        #         ['contact@artisanbakery.ro']
        #         )
        #     except BadHeaderError:
        #         return HttpResponse('Invalid header found.')
        #     return HttpResponseRedirect('/contact/thanks/')
        # else:
        #     return render(request, template, context)
        context = {
            "message_name": message_name
        }
        return render(request, template, context)
    else:
        return render(request, template, {})

#------------------------MENU VIEW------------------------------------------MENU
def menu_view(request):
    template = 'artisan_app/menu_image.html'

    return render(request, template, {})

#------------------------GALLERY VIEW------------------------------------GALLERY
def gallery_view(request):
    template = 'artisan_app/gallery.html'

    #------------------PHOTOS FOR INTERIOR SECTION AND FEATURED---------
    int_photos = Gallery.objects.filter(type='interior')
    feat_pics = Menu.objects.filter(featured=True)

    #----------------------brand name and slogans-----------------------
    slogans = Slogan.objects.latest("timestamp")
    context = {
        'int_photos': int_photos,
        "feat_pics": feat_pics,
        "slogans": slogans,

    }
    return render(request, template, context)

#------------------------EVENTS VIEW------------------------------------GALLERY
def events_view(request):
    template = 'artisan_app/events.html'
    return render(request, template, {})

#------------------------RESERVATION VIEW--------------------------------BLOG POST
def reservation_view(request):
    template = 'artisan_app/reservation.html'
    return render(request, template, {})
