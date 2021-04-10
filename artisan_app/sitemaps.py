from django.contrib.sitemaps import Sitemap
from .models import Menu, BlogPost
from django.shortcuts import reverse

class MenuSitemap(Sitemap):
    changefreq = "monthly"
    priority = 0.8
    protocol = 'http'

    def items(self):
        return Menu.objects.all()

    def location(self,obj):
        return '/%s' % (obj.slug)

class BlogPostSitemap(Sitemap):
    changefreq = "weekly"
    priority = 0.8
    protocol = 'http'

    def items(self):
        return BlogPost.objects.all()

    def lastmod(self, obj):
        return obj.created_date

    def location(self,obj):
        return '/%s' % (obj.slug)

class StaticViewSitemap(Sitemap):
    changefreq = 'monthly'

    def items(self):
        return ['home', 'about', 'contacts']

    def location(self, item):
        return reverse(item)
