#Section 1: import
from django import forms
from app.models import Contact
from django.forms import ModelForm
from django.forms.models import modelformset_factory



CONTACT_CHOICES =   (('application', ('Be notified when the upcoming application is available.')),
                     ('coach', ('Be a short-term coding or professional development coach')),
                     ('instructor', ('Teach a lesson as a guest instructor.')),
                     ('mentor', ('Be a year-long professional mentor.')),
                     ('email_list', ('Receive email updates from Code for Progress.')),
                     ('other', ('Contact Code for Progress for something else.')))


class ContactForm(forms.Form):
    first_name = forms.CharField(max_length=45, required = True)
    last_name = forms.CharField(max_length=45, required = True)
    email = forms.CharField(max_length=45, required = True)
    interested_in = forms.MultipleChoiceField(
                            choices = CONTACT_CHOICES,
                            widget=forms.CheckboxSelectMultiple(),
                            required=True,
                            )
    notes = forms.CharField(required=False, widget = forms.Textarea)

