from django.shortcuts import render
from .models import Team, Gallery, RecipeCategory, Menu, Slogan, Comment, Story, Event, Fact
from .utils import fb_followers_count
from django.core.mail import send_mail, BadHeaderError
from django.http import HttpResponse, HttpResponseRedirect
import datetime

#------------------------HOME VIEW-----------------------------------------HOME
def home_view(request):
    template = 'artisan_app/home.html'
    team = Team.objects.all()

    #--------------------fetch recipes per category-----------------------------
    recipe_categories = RecipeCategory.objects.all()
    #---------------------fetch recipes-----------------------------------------
    menu = Menu.objects.all()
    # tarte_dulci = Menu.objects.filter(type='menu_tarte')
    # torturi = Menu.objects.filter(type='menu_torturi')
    # sarate = Menu.objects.filter(category='sarate')
    # fursecuri = Menu.objects.filter(category='fursecuri')
    # cheesecake = Menu.objects.filter(category='cheesecake')
    # paine = Menu.objects.filter(category='paine-cu-maia')
    # prajituri_diverse = Menu.objects.filter(category='prajituri-diverse')
    # cafea = Menu.objects.filter(category='cafea')


    #----------------------brand name and slogans-------------------------------
    slogans = Slogan.objects.latest("timestamp")
    #---------------------get gallery pictures----------------------------------
    pictures = Gallery.objects.all()[:10]
    feat_pics = Menu.objects.filter(featured=True)
    #---------------------get our story data----------------------------------
    story = Story.objects.last()
    #---------------------get events data--------------------------------------
    #-------events this week------------------
    startdate1 = datetime.date.today()
    enddate1 = startdate1 + datetime.timedelta(days=6)
    #-------events this month------------------
    startdate2 = datetime.date.today()
    enddate2 = startdate2 + datetime.timedelta(days=30)

    this_week_events = Event.objects.filter(start_date__range=[startdate1, enddate1]).order_by('start_date')
    this_month_events = Event.objects.filter(start_date__range=[startdate2, enddate2]).order_by('start_date')

    #-----------------------facebook reviews -----------------------------------
    comm = Comment.objects.all()

    context = {
        "team":team,
        "recipe_categories": recipe_categories,
        "menu": menu,
        # "tarte_dulci": tarte_dulci,
        # "torturi": torturi,
        # "sarate": sarate,
        # "cheesecake": cheesecake,
        # "paine": paine,
        # "prajituri_diverse": prajituri_diverse,
        # "cafea": cafea,
        # "fursecuri": fursecuri,
        "pictures": pictures,
        "slogans": slogans,
        "comm": comm,
        "feat_pics": feat_pics,
        "story": story,
        "this_week_events": this_week_events,
        "this_month_events": this_month_events,
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
    facts = Fact.objects.all()

    context = {
        "team":team,
        "facts": facts,
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
    #--------------------fetch recipes per category-----------------------------
    recipe_categories = RecipeCategory.objects.all()
    #---------------------fetch recipes-----------------------------------------
    menu = Menu.objects.all()

    context = {
        "recipe_categories": recipe_categories,
        "menu": menu,
    }

    return render(request, template, context)

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
