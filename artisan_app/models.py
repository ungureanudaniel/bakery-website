from django.db import models
from ckeditor.fields import RichTextField
from django.utils.text import slugify
from django.contrib.auth.models import User
import datetime
from taggit.managers import TaggableManager


#---------------------------TEAM MEMBERS AND THEIR INFO-------------------------
class Story(models.Model):
    our_story = RichTextField(blank=True, null=True)
    motto = models.CharField(max_length=200, default=" ")
    about_us_page = RichTextField(blank=True, null=True)
    about_us_image = models.ImageField(upload_to='', default='static/img/info_img2.jpg')
    signature = models.ImageField(upload_to='', default='static/img/about_3.jpg')
    traditions = RichTextField(blank=True, null=True)
    traditions_image = models.ImageField(upload_to='', default='static/img/about_1.jpg')
    service = RichTextField(blank=True, null=True)
    service_image = models.ImageField(upload_to='', default='static/img/about_2.jpg')
    history = RichTextField(blank=True, null=True)
    history_image = models.ImageField(upload_to='', default='static/img/about_3.jpg')

    class Meta:
        ordering = ['id',]


#--------------------------------FACTS CATEGORIES-------------------------------
class OurFact(models.Model):
    category_en = models.CharField(max_length=20)
    category_ro = models.CharField(max_length=20)
    figures = models.TextField()

    def __str__(self):
       return '{}'.format(self.category_ro)


#---------------------------TEAM MEMBERS AND THEIR INFO-------------------------
class Team(models.Model):
    first_name = models.CharField(max_length=30)
    last_name = models.CharField(max_length=30)
    job = models.CharField(max_length=60, default='cofetar-patiser')
    facebook = models.CharField(max_length=200)
    insta = models.CharField(max_length=200)
    twitter = models.CharField(max_length=200)
    photo = models.ImageField(upload_to='')

    def __str__(self):
       return '{} {}'.format(self.first_name, self.last_name)

#---------------------------PHOTOS GENERAL GALLERY------------------------------
PHOTO_TYPE = (
    ('Recipes', 'Recipes'),
    ('Interior', 'Interior'),
)
class Gallery(models.Model):
    title = models.CharField(max_length=200, default='Gallery')
    photo = models.ImageField(upload_to='interior')
    type = models.CharField(choices = PHOTO_TYPE, max_length=200, default='recipe')

    def __str__(self):
       return '{}'.format(self.title)
#---------------------------------SLOGAN DATA----------------------------------
class Slogan(models.Model):
    brand = models.CharField(max_length=200)
    motto = models.CharField(max_length=200)
    text = RichTextField(blank=True, null=True)
    timestamp = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return '{}'.format(self.brand)


#-------------------------NEWSLETTER SUBSCRIBED USERS---------------------------
class NewsletterUser(models.Model):
    email = models.EmailField(max_length=200)
    conf_num =  models.CharField(max_length=15)
    confirmed = models.BooleanField(default=False)
    timestamp = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return self.email + " (" + ("not " if not self.confirmed else "") + "confirmed)"
#----------------------SEND EMAIL TO SUBSCRIBED USERS---------------------------
class SendEmailFooter(models.Model):
    id = models.AutoField(primary_key=True)
    version = RichTextField(blank=True, null=True)

    def __str__(self):
        return '{}'.format(self.id)
#----------------------SEND EMAIL TO SUBSCRIBED USERS---------------------------
class SendEmail(models.Model):
    subscribers = models.ForeignKey(NewsletterUser, related_name='subscribed_emails', on_delete=models.SET_NULL, blank=True, null=True)
    title = models.CharField(max_length=200, default='')
    body = RichTextField(blank=True, null=True)
    author = models.ForeignKey(User, on_delete=models.SET_NULL, blank=True, null=True)
    footer = models.ForeignKey(SendEmailFooter, related_name='footers', on_delete=models.SET_NULL, blank=True, null=True)
    timestamp = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return '{}'.format(self.title)


#-------------------------------EVENTS DATA-------------------------------------
class Event(models.Model):
    type = models.CharField(max_length=200, default='workshop')
    title = models.CharField(max_length=200)
    description = RichTextField(blank=True, null=True)
    start_date = models.DateTimeField()
    end_date = models.DateTimeField()
    tax = models.IntegerField()
    image = models.ImageField(upload_to='')

    def __str__(self):
        return '{}'.format(self.title)
#---------------------------RECIPES CATEGORY-----------------------------------
class RecipeCategory(models.Model):
    title = models.CharField(max_length=60)
    slug = models.SlugField(max_length = 250, null = True, blank = True)


    def save(self, *args, **kwargs):
        self.slug = slugify(self.title)
        return super(RecipeCategory, self).save(*args, **kwargs)

    def __str__(self):
        return '{}'.format(self.slug)

#---------------------------RECIPES MENU --------------------------------------

class Menu(models.Model):
    MEASURE_CHOICES = (
    ('LEI/KG', 'LEI/KG'),
    ('LEI/BUC', 'LEI/BUC'),
    )
    type = models.CharField(max_length=150, default=".menu_breakfast")
    recipe_name = models.CharField(max_length=150)
    description = RichTextField(blank=True, null=True)
    price_tag = models.IntegerField()
    measurement = models.CharField(max_length=10, default='LEI/KG', choices=MEASURE_CHOICES)
    category = models.ForeignKey(RecipeCategory, related_name='recipe_name', on_delete=models.SET_NULL, blank=True, null=True)
    photo = models.ImageField(upload_to='menu')
    slug = models.SlugField(default='', max_length = 250, editable=False, null = True, blank = True)
    featured = models.BooleanField(default=False)
    created = models.DateTimeField(default=datetime.datetime.now, blank=True)

    def __str__(self):
       return '{}'.format(self.recipe_name)

    def save(self, *args, **kwargs):
        self.slug = slugify(self.recipe_name)
        return super(Menu, self).save(*args, **kwargs)

#-------------------------COMMENTS / REVIEWS MODEL------------------------------
class Review(models.Model):
    author = models.CharField(max_length=300)
    content = RichTextField(blank=False)
    date_posted = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return '{}'.format(self.author)
#-------------------------BLOG POST CATEGORIES---------------------------------
class BlogCategory(models.Model):
    name = models.CharField(max_length=20)

    def save(self, *args, **kwargs):
        self.slug = slugify(self.name)
        return super(BlogCategory, self).save(*args, **kwargs)

    def __str__(self):
        return self.name



#--------------------------BLOG POST MODEL------------------------------------------
class BlogPost(models.Model):
    STATUS_CHOICES = (
        ('Published', 'Published'),
        ('Draft', 'Draft'),
    )
    author = models.ForeignKey(User, on_delete=models.CASCADE)
    title = models.CharField(max_length=255)
    image = models.ImageField(upload_to='menu')
    text = RichTextField(blank=True, null=True)
    category = models.ForeignKey(BlogCategory, related_name='category', on_delete=models.SET_NULL, blank=True, null=True)
    # comment_count = models.IntegerField(default=0)
    likes = models.ManyToManyField(User, related_name="blog_posts")
    views_count = models.IntegerField(default=0)
    featured = models.BooleanField()
    slug = models.SlugField(default='', editable=False, max_length=200, null = False)
    created_date = models.DateTimeField(auto_now_add=True)
    status = models.CharField(max_length=10, default='Draft', choices=STATUS_CHOICES)
    tags = TaggableManager()

    class Meta:
        ordering = ["-created_date"]

    def total_likes(self):
        return self.likes.count()

    def save(self, *args, **kwargs):
        value = self.title
        self.slug = slugify(value, allow_unicode=True)
        return super(BlogPost, self).save(*args, **kwargs)

    @property
    def views_count(self):
        return PostViews.objects.filter(post=self).count()

    def get_absolute_url(self):
        kwargs = {
            'slug': self.slug,
            'pk': pk.self
        }
        return reverse('blog_post', kwargs=kwargs)

    def __str__(self):
        return self.title

#-----------------------VIEWS COUNT MODEL ON EACH POST--------------------------
class PostViews(models.Model):
    IPAddres= models.GenericIPAddressField(default="84.232.140.116")
    post = models.ForeignKey(BlogPost, on_delete=models.CASCADE)

    def __str__(self):
        return '{0} in {1} post'.format(self.IPAddres,self.post.title)


#-----------------------COMMENTS MODEL ON EACH POST-----------------------------
class Comment(models.Model):
    name = models.CharField(max_length=250)
    timestamp = models.DateTimeField(auto_now_add=True)
    email = models.EmailField()
    text = models.TextField()
    post = models.ForeignKey(BlogPost, related_name='comments', on_delete=models.CASCADE)
    active = models.BooleanField(default=True)
    parent = models.ForeignKey("self", on_delete=models.CASCADE, null=True, blank=True)
    class Meta:
        ordering = ['timestamp']

    def approve(self):
        self.approved_comment = True
        self.save()

    def __str__(self):
        return '%s - %s' % (self.post.title, self.name)

    def children(self):
        return Comment.objects.filter(parent=self)

    @property
    def is_parent(self):
        if self.parent is not None:
            return False
        return True

    def get_absolute_url(self):
        return reverse("/")
#-----------------------QUOTE MODEL ON EACH POST-----------------------------
class Quote(models.Model):
    text = models.TextField()
    author = models.CharField(max_length=200)

    def __str__(self):
        return self.author


        #return reverse('home')
    #
    # def get_edit_url(self):
    #     return reverse('post_edit', kwargs={'pk': self.pk})
    #     #return reverse('home')
    #
    # def get_delete_url(self):
    #     return reverse('post_delete', kwargs={'pk': self.pk})
    #     #return reverse('home')

    # @property
    # def get_comments(self):
    #     return self.comments.all().order_by('-timestamp')
