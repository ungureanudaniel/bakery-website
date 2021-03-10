from django.db import models
from ckeditor.fields import RichTextField
from django.utils.text import slugify
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
    text = RichTextField(blank=True, null=True)
    timestamp = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return '{}'.format(self.brand)
#-------------------------------EVENTS DATA-------------------------------------
class Event(models.Model):
    title = models.CharField(max_length=200)
    description = RichTextField(blank=True, null=True)
    start_date = models.DateTimeField()
    end_date = models.DateTimeField()
    tax = models.IntegerField()

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
    recipe_name = models.CharField(max_length=150)
    description = RichTextField(blank=True, null=True)
    price_tag = models.IntegerField()
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
class Comments(models.Model):
    # author = models.ForeignKey(User, on_delete=models.CASCADE)
    content = RichTextField(blank=False)
    date_posted = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return '{}'.format(self.content)
#--------------------------BLOG MODEL------------------------------------------
# class BlogList(models.Model):
#     recipe_name = models.CharField(max_length=200, default='recipe')
#     description = models.TextField(max_length=200, default='recipe')
#     price_tag =
#
#     class Meta:
#         ordering = ["-created_date"]
#
#     def __str__(self):
#         return self.title
