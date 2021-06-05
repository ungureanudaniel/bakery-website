from django.conf import settings
import os

from django.urls import reverse, reverse_lazy
from django.contrib import messages
from django.template import loader
from django.utils.html import strip_tags
import random
from django.contrib.auth.models import User
from django.db.models import Q, Count
from django.shortcuts import render, get_object_or_404, redirect
from .models import Team, Gallery, RecipeCategory, Menu, Slogan, Review, Story, Event, BlogPost, Comment, NewsletterUser, OurFact, ContactData, BlogCategory
from taggit.models import Tag
from .forms import CommentForm, SendNewsletterForm
# from .utils import fb_followers_count
from django.core.mail import send_mail, BadHeaderError
from django.http import HttpResponse, HttpResponseRedirect
import datetime


#--------------------------------------LOGIN VIEW------------------------------
# def LoginView(request):
#     template = 'registration/login.html'
#     if request.method == "POST":
#         username = request.POST['username']
#         password = request.POST['password']
#         user = authenticate(request, username=username, password=password)
#         if user is not None:
#             login(request, user)
#             return redirect("/")
#         else:
#             return redirect("login")
#     else:
#         return render(request, template, {})
#
# #------------------------------------------LOGOUT-------------------------------
# def LogoutView(request):
#     logout(request)
#     redirect("/")

#-----------------------SEND EMAIL TO SUBSCRIBERS---------------------SEND EMAIL
def random_digits():
    return "%0.12d" % random.randint(0, 999999999999)

def voucher_code():
    nr_sub = NewsletterUser.objects.all().count()
    return "Artisan{}".format(int(nr_sub)+1)

def send_email(request):
    template = 'artisan_app/send_email.html'
    subscribers = NewsletterUser.objects.values_list('email', flat=True)
    form = SendNewsletterForm(request.POST or None)
    subject = form['title']
    message = form['body']
    from_email = settings.FROM_EMAIL
    recipient_list = ['ungureanu.daniel86@gmail.com']
    if subject and message and from_email:
        try:
            send_mail(
            subject,
            message,
            from_email,
            recipient_list,
            fail_silently=False
        )
        except BadHeaderError:
            return HttpResponse('Invalid header found.')
        return HttpResponseRedirect('/')
    else:
        return HttpResponse('Make sure fields are correct.')
    context = {
        # "subject":subject,
        # "message":message,
        "subscribers": subscribers,
        "form": form,
    }

    return render(request, template, context)
#------------------------HOME VIEW-----------------------------------------HOME
def home_view(request):
    template = 'artisan_app/home.html'
    team = Team.objects.all()
    subscribers = NewsletterUser.objects.values_list('email', flat=True)
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
    comm = Review.objects.all()
    posts = BlogPost.objects.filter(status='Published')
    #---------------- CONTACT FORM -----------------------------------------------

    if request.method == "POST":
        subject = request.POST.get('subject')
        message_name = request.POST.get('name')
        message_email = request.POST.get('email')
        message = request.POST.get('message')
        recipient = settings.EMAIL_HOST_USER
        subscriber = request.POST.get('newsletter_email')
        if subscriber:
            voucher_prize = voucher_code()
            sub = NewsletterUser(email=subscriber, voucher_prize =voucher_code(), conf_num=random_digits())
            sub.save()
            sub_subject = "Confirmare inscriere newsletter"
            from_email=settings.FROM_EMAIL
            # sub_email = list(subscriber)
            sub_message = 'Multumim ca te-ai inscris la newsletter! Pentru a confirma abonarea acceseaza acest '
            html_content = loader.render_to_string(
            'artisan_app/news_email_confirmation.html',
            {
                'text': '<p><a href="http://127.0.0.1:8000/subscription_confirmation">link</a></p>',
            }
            )

            try:
                send_mail(sub_subject, sub_message, from_email, [subscriber], html_message=html_content)
            except BadHeaderError:
                return HttpResponse('Invalid header found.')
        if subject and message and message_name and message_email:
            new_contact = ContactData(contact_subject=subject, contact_author=message_name, contact_email=message_email, contact_message=message, timestamp=datetime.datetime.now())
            new_contact.save()
            new_subscriber = NewsletterUser(email=subscriber)
            new_subscriber.save()
            try:
                send_mail(subject, message, message_email, ['contact@artisanbakery.ro'])
            except BadHeaderError:
                return HttpResponse('Invalid header found.')

            messages.success(request, 'Un email de confirmare a plecat catre tine. Te rugam sa verifici.')
        else:

            context = {
                "team":team,
                "recipe_categories": recipe_categories,
                "menu": menu,
                "pictures": pictures,
                "slogans": slogans,
                "comm": comm,
                "feat_pics": feat_pics,
                "story": story,
                "this_week_events": this_week_events,
                "this_month_events": this_month_events,
                "posts": posts,
            }
        return render(request, template, context)
    else:
        context = {
            "team":team,
            "recipe_categories": recipe_categories,
            "menu": menu,
            "pictures": pictures,
            "slogans": slogans,
            "comm": comm,
            "feat_pics": feat_pics,
            "story": story,
            "this_week_events": this_week_events,
            "this_month_events": this_month_events,
            "posts": posts,
        }
        return render(request, template, context)

        # if email_query.exists():
        #     messages.warning(request, 'Acest email este deja inscris!')
        #     return redirect(reverse('home'))
        # else:
        #     try:
        #         subscribed = NewsletterUser.objects.create(email=newsletter_form)
        #         subscribed.save()
        #         messages.success(request, 'Acest email este deja inscris!')
        #     except:
        #         messages.warning(request, "Eroare! Incercati din nou!")
        #         return redirect(reverse('home'))
    # return redirect(reverse('home'))
    #-----------------------CONTACT LOGIC---------------------------------------
    # if request.method == "POST":
    #     message_name = request.POST.get('name')
    #     message_email = request.POST.get('email')
    #     message = request.POST.get('message')
    #
    #     context["message_name"] = message_name
    #     messages.success(request, 'Am primit mesajul tau {} si vom raspunde cat de curand!'.format(message_name))
    #
    # else:
    #     return render(request, template, context)





    # newsletter_form = NewsletterForm(request.POST or None)
    # newsletter_form = request.POST.get('newsletter_email')

def newsletter_confirmation_view(request):
    template = 'artisan_app/subscription_confirmation.html'


    context = {
    }

    return render(request, template, context)

#------------------------ABOUT VIEW----------------------------------------ABOUT
def about_view(request):
    template = 'artisan_app/about.html'
    slogans = Slogan.objects.last()
    team = Team.objects.all()
    facts = OurFact.objects.all()
    story = Story.objects.last()
    context = {
        "story": story,
        "team":team,
        "facts": facts,
        "slogans": slogans,
    }

    return render(request, template, context)

#------------------------BLOG VIEW-----------------------------------------BLOG
def blog_view(request):
    template = 'artisan_app/blog.html'
    posts = BlogPost.objects.filter(status='Published')
    # nr_comments = Comment.objects.values('post').annotate(Count('post'))
    nr_comments = BlogPost.objects.annotate(comment_count=Count('comments')).values()
    # count = nr_comments.values('comments', 'comments__count')
    cats = BlogCategory.objects.all()
    common_tags = Tag.objects.all()
    content = {
    "nr_comments": nr_comments,
    "posts": posts,
    "cats": cats,
    "common_tags": common_tags,
    # "count": count
    }
    return render(request, template, content)

#------------------------BLOG POST VIEW--------------------------------BLOG POST
def blog_post_view(request, pk):
    template = 'artisan_app/blog_post.html'
    the_post = BlogPost.objects.get(pk = pk)
    # nr_comments = Post.objects.values('comments').annotate(Count('comments'))
    comments = Comment.objects.filter(post = the_post)
    cats = BlogCategory.objects.all()
    posts = BlogPost.objects.filter(status='Published')
    common_tags = Tag.objects.all()
    new_comment = None
    search_data = ""
    if request.method == 'POST':
        form_name = request.POST.get('form-name')
        form_email = request.POST.get('form-email')
        message = request.POST.get('form-message')


        if form_name and form_email and message:
            # Create Comment object but don't save to database yet
            new_comment = Comment(name=form_name, email=form_email, text=message)
            # Assign the current post to the comment
            new_comment.post = the_post
            # Save the comment to the database
            new_comment.save()


            content = {
                "new_comment": new_comment,
                "common_tags": common_tags,
                "posts": posts,
                "the_post": the_post,
                "comments": comments,
                "new_comment": new_comment,
                "cats": cats,
                # "comment_form": comment_form
            }
            return render(request, template, content)
    else:
        content = {
            "common_tags": common_tags,
            "posts": posts,
            "the_post": the_post,
            "comments": comments,
            "new_comment": new_comment,
            "cats": cats,
        }
        return render(request, template, content)

#------------------------SEARCH VIEW------------------------------------SEARCH
def search_blogposts_view(request):
    template = 'artisan_app/search_blogposts.html'
    cats = BlogCategory.objects.all()
    posts = BlogPost.objects.filter(status='Published')
    common_tags = Tag.objects.all()
    search_data = request.POST.get('keyword')
    posts = BlogPost.objects.all()

    filtered_posts = None
    if search_data:
        filtered_posts = posts.filter(Q(title__icontains=search_data) | Q(text__icontains=search_data)).distinct()

    context = {
        "common_tags": common_tags,
        "filtered_posts": filtered_posts,
        "cats": cats,
        "search_data":search_data,
    }


    return render(request, template, context)
#------------------------CONTACT VIEW------------------------------------CONTACT
def contacts_view(request):
    template = 'artisan_app/contacts.html'

    #-----------------------CONTACT LOGIC---------------------------------------
    if request.method == "POST":
        subject = request.POST.get('subject')
        message_name = request.POST.get('name')
        message_email = request.POST.get('email')
        message = request.POST.get('message')
        recipient = settings.EMAIL_HOST_USER

        if subject and message and message_name and message_email:
            new_contact = ContactData(contact_subject=subject, contact_author=message_name, contact_email=message_email, contact_message=message, timestamp=datetime.datetime.now())
            new_contact.save()
            try:
                send_mail(subject, message, message_email, ['contact@artisanbakery.ro'])
            except BadHeaderError:
                return HttpResponse('Invalid header found.')
            return redirect('success')

        else:
            context = {
                "message_name": message_name
            }
            return render(request, template, context)
        context = {
            "message_name": message_name
        }
        return render(request, template, context)
    else:
        context = {

        }
        return render(request, template, context)

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

    #-------events this week------------------
    startdate1 = datetime.date.today()
    enddate1 = startdate1 + datetime.timedelta(days=6)
    #-------events this month------------------
    startdate2 = datetime.date.today()
    enddate2 = startdate2 + datetime.timedelta(days=30)

    this_week_events = Event.objects.filter(start_date__range=[startdate1, enddate1]).order_by('start_date')
    this_month_events = Event.objects.filter(start_date__range=[startdate2, enddate2]).order_by('start_date')

    context = {
        "this_week_events": this_week_events,
        "this_month_events": this_month_events,
    }
    return render(request, template, context)

#------------------------RESERVATION VIEW--------------------------------BLOG POST
def reservation_view(request):
    template = 'artisan_app/reservation.html'
    return render(request, template, {})
