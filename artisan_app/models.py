from django.db import models
from ckeditor.fields import RichTextField
from django.utils.text import slugify
from django.contrib.auth.models import User
from taggit.managers import TaggableManager


#---------------------------TEAM MEMBERS AND THEIR INFO-------------------------
class Story(models.Model):
    our_story = RichTextField(blank=True, null=True)
    traditions = RichTextField(blank=True, null=True)
    traditions_image = models.ImageField(upload_to='', default='static/img/about_1.jpg')
    service = RichTextField(blank=True, null=True)
    service_image = models.ImageField(upload_to='', default='static/img/about_2.jpg')
    history = RichTextField(blank=True, null=True)
    history_image = models.ImageField(upload_to='', default='static/img/about_3.jpg')

    class Meta:
        ordering = ['id',]


#--------------------------------FACTS CATEGORIES-------------------------------
class Fact(models.Model):
    category_en = models.CharField(max_length=20)
    category_ro = models.CharField(max_length=20)
    figures = models.IntegerField()

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
#-------------------------------EVENTS DATA-------------------------------------
class Event(models.Model):
    type = models.CharField(max_length=200, default='Workshop')
    title = models.CharField(max_length=200)
    description = RichTextField(blank=True, null=True)
    start_date = models.DateTimeField()
    end_date = models.DateTimeField()
    tax = models.IntegerField()
    image = models.ImageField(upload_to='', default='static/img/events_poetry.jpg')

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
    slug = models.SlugField(max_length = 250, null = True, blank = True)
    featured = models.BooleanField(default=False)

    def __str__(self):
       return '{}'.format(self.recipe_name)

    def save(self, *args, **kwargs):
        self.slug = slugify(self.recipe_name)
        return super(Menu, self).save(*args, **kwargs)

#-------------------------COMMENTS / REVIEWS MODEL------------------------------
class Comment(models.Model):
    author = models.CharField(max_length=300)
    content = RichTextField(blank=False)
    date_posted = models.DateTimeField(auto_now_add=True)
    tags = TaggableManager()

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
#--------------------------BLOG MODEL------------------------------------------
class BlogPost(models.Model):
    STATUS_CHOICES = (
        ('Published', 'Published'),
        ('Draft', 'Draft'),
    )
    author = models.ForeignKey(User, on_delete=models.CASCADE)
    title = models.CharField(max_length=255)
    image = models.FileField(upload_to='blog_image', blank=True)
    text = RichTextField(blank=True, null=True)
    category = models.ForeignKey(BlogCategory, related_name='category', on_delete=models.SET_NULL, blank=True, null=True)
    comment_count = models.IntegerField(default=0)
    # views_count = models.IntegerField(default=0)
    featured = models.BooleanField()
    slug = models.SlugField(max_length=255, unique=True)
    created_date = models.DateTimeField(auto_now_add=True)
    status = models.CharField(max_length=10, default='Draft', choices=STATUS_CHOICES)

    class Meta:
        ordering = ["-created_date"]

    def save(self, *args, **kwargs):
        self.slug = slugify(self.title)
        return super(BlogPost, self).save(*args, **kwargs)

    def __str__(self):
        return self.title

    # def get_absolute_url(self):
    #     return reverse('post_detail', kwargs={'pk': self.pk})
    #     #return reverse('home')
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
