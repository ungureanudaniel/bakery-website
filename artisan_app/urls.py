from django.conf.urls.static import static
from django.conf import settings
from django.urls import path, include
from .views import home_view, about_view, blog_view, blog_post_view, contacts_view, menu_view, gallery_view, events_view


urlpatterns = [
    path('', home_view, name='home'),
    path('about/', about_view, name='about'),
    path('blog/', blog_view, name='blog'),
    path('blog_post/', blog_post_view, name='blog_post'),
    path('contacts/', contacts_view, name='contacts'),
    path('menu/', menu_view, name='menu'),
    path('gallery/', gallery_view, name='gallery'),
    path('events/', events_view, name='events'),

]+static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
