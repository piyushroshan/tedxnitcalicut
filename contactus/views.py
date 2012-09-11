# Create your views here.
from django.http import *
from django.shortcuts import render_to_response
from django.template.loader import get_template
from django.template import RequestContext
from contactus.models import contactform
from django.core.mail import *
ques = u"Which is the day after Tuesday?"
ans = "wednesday"
def contact_us(request):
	t = get_template('contactus/contactus.html')
	if request.user.is_authenticated():
		name = request.user.get_full_name()
		email = request.user.email
		c = RequestContext(request,{'name':name,'email':email,})
		html = t.render(c)
	else:
		c = RequestContext(request,{'ques':ques})
		html = t.render(c)
	return HttpResponse(html)


def submit_form(request):
	errors=[]
	if request.method == 'POST':
		if not request.POST.get('name', ''):
			errors.append('Enter your name.')
		if not request.POST.get('email', ''):
			errors.append('Enter a valid email address.')
		if request.POST.get('email') and '@' not in request.POST['email']:
			errors.append('Enter a valid e-mail address.')
		if not request.POST.get('subject', ''):
			errors.append('Enter a subject.')
		if not request.POST.get('message', ''):
			errors.append('Enter a message.')
		if not request.user.is_authenticated() and not request.POST.get('answer')==ans:
			errors.append('Enter correct answer to the question')
		if not errors:
			cform = contactform()
			cform.name = request.POST['name']
			cform.email = request.POST['email']
			cform.phone = request.POST['phone']
			cform.subject = request.POST['subject']
			cform.message = request.POST['message']
			cform.save()
			EmailMessage(
				request.POST['subject'],
				request.POST['message'],
				request.POST.get('email', 'noreply@example.com'),
				['piyushroshan@example.com'],
				)
			return HttpResponseRedirect('/contactus/thanks/')
		t = get_template('contactus/contactus.html')
		if request.user.is_authenticated():
			name = request.user.get_full_name()
			email = request.user.email
		else:
			name = request.POST['name']
			email = request.POST['email']

		c = RequestContext (request, {
				'errors': errors,
				'name': name,
				'phone' : request.POST.get('phone',''),
				'subject': request.POST.get('subject', ''),
				'message': request.POST.get('message', ''),
				'email': email,
				'ques':ques,
			})
		html = t.render(c)
		return HttpResponse(html)


def thanks(request):
	t=get_template('contactus/contact_post.html')
	c=RequestContext(request, {	})
	html=t.render(c)
	return HttpResponse(html)

