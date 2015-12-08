import urlparse
from django.shortcuts import render, get_object_or_404, redirect
from django.http import HttpResponseRedirect, HttpResponse
from django.utils.decorators import method_decorator
from django.core.urlresolvers import reverse
from django.views.generic.base import TemplateView
from django.core.mail import send_mail
from .models import *
from .forms import ContactForm

def home(request):
    return render(request, "index.html")

def program(request):
    return render(request, "program.html", {})

def alumni(request):
    alumniList = Fellow.objects.filter(year = 2014)

    return render(request, "alumni.html", {'alumniList':alumniList})

def faq(request):
    faqList = FaqQuestion.objects.all()
    return render(request, "faq.html", {'faqList':faqList})

def contact(request):
    form = ContactForm()
    if request.method == "POST":
            form = ContactForm(request.POST)
            if form.is_valid():
                first_name = form.cleaned_data.get("first_name")
                last_name = form.cleaned_data.get("last_name")
                staff_email = 'info@codeforprogress.org'
                email = form.cleaned_data.get("email")
                interested_in = form.cleaned_data.get("interested_in")
                notes = form.cleaned_data.get("notes")
                message_interest_string = ""
                for i in interested_in:
                    message_interest_string+="\n\t + "+str(i)
                if first_name and last_name and email and interested_in:
                    contact = Contact(first_name = first_name, last_name = last_name, email = email, interested_in = interested_in, notes=notes)
                    contact.save()
                    send_mail('Thanks for contacting Code for Progress', "Thanks for contacting Code for Progress! Our staff will be in touch with you shortly.", 'Code for Progress', [email], fail_silently=False)
                    send_mail('New email from the CFP website', (first_name+" "+last_name+"("+email+") just wrote to us. \n\nWe have all of their info saved in the database, and they're interested in these things:\n"+message_interest_string+"\n\nThey also said:\n "+notes), email, ['programs@codeforprogress.org'], fail_silently=False)
    
    return render(request, "contact.html", {'form':form})

def staff(request):

    staffList = Staff.objects.all()
    context = {'staffList': staffList,}
    return render(request, "staff.html", context)

def apply(request):
    return render(request, "apply.html", {})

def partner(request):
    return render(request, "apply.html", {})

def community(request):
    return render(request, "community.html", {})

class ContactUsView(TemplateView):
    def get(self, request, **kwargs):
        form = ContactForm()
        return render (request, 'contact.html', {'form':form})

    def post(self, request, **kwargs):
        if request.method == "POST":
            form = ContactForm(request.POST)
            if form.is_valid():
                first_name = form.cleaned_data.get("first_name")
                last_name = form.cleaned_data.get("last_name")
                staff_email = 'info@codeforprogress.org'
                email = form.cleaned_data.get("email")
                interested_in = form.cleaned_data.get("interested_in")
                notes = form.cleaned_data.get("notes")
                message_interest_string = ""
                for i in interested_in:
                    message_interest_string+="\n\t + "+str(i)
                if first_name and last_name and email and interested_in:
                    contact = Contact(first_name = first_name, last_name = last_name, email = email, interested_in = interested_in, notes=notes)
                    contact.save()
                    send_mail('Thanks for contacting Code for Progress', "Thanks for contacting Code for Progress! Our staff will be in touch with you shortly.", 'Code for Progress', [email], fail_silently=False)
                    send_mail('New email from the CFP website', (first_name+" "+last_name+"("+email+") just wrote to us. \n\nWe have all of their info saved in the database, and they're interested in these things:\n"+message_interest_string+"\n\nThey also said:\n "+notes), email, ['programs@codeforprogress.org'], fail_silently=False)
                    return redirect('thank_you')
            return render(request, 'contact.html', {'form' : form})


