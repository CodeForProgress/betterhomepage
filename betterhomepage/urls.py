from django.conf.urls import patterns, include, url
from django.conf import settings
from django.conf.urls import include, url
from django.conf.urls.static import static
from django.contrib import admin

from app import views
from app.views import ContactUsView

urlpatterns = [
    url(r'^$', 'app.views.home', name='home'),
    url(r'^program/$', 'app.views.program', name='program'),
    url(r'^program/$', 'app.views.program', name='program'),
    url(r'^alumni/$', 'app.views.alumni', name='alumni'),
    url(r'^faq/$', 'app.views.faq', name='faq'),
    url(r'^contact/$', 'app.views.contact', name='contact'),
    url(r'^staff/$', 'app.views.staff', name='staff'),
    url(r'^apply/$', 'app.views.apply', name='apply'),
    url(r'^community/$', 'app.views.community', name='community'),
    url(r'^partner/$', 'app.views.partner', name='partner'),
    url(r'^admin/', include(admin.site.urls)),
]

if settings.DEBUG: 
    urlpatterns += static(settings.STATIC_URL, document_root=settings.STATIC_ROOT)
    urlpatterns += static(settings.STATIC_URL, document_root=settings.STATIC_ROOT)
if settings.DEBUG:
    from django.views.static import serve
    from django.conf.urls import patterns
    _media_url = settings.MEDIA_URL
    if _media_url.startswith('/'):
        _media_url = _media_url[1:]
        urlpatterns += patterns('',
                                (r'^%s(?P<path>.*)$' % _media_url,
                                serve,
                                {'document_root': settings.MEDIA_ROOT}))
    del(_media_url, serve)