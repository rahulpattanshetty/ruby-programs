require 'pry'

class ContactForm

attr_accessor :name, :email_id, :subject, :phone, :message

def details
	"Name:#{name}\nEmail:#{email_id}\nSubject:#{subject}\nPhone:#{phone}\nMessage:#{message}\n"
end

end
contact_forms = []
c1 = ContactForm.new
c1.name = "rahul"
c1.email_id = "rahulpattanshetty@gmail.com"
c1.subject = "enquiry"
c1.phone = "9591625269"
c1.message = "want to learn wd"
contact_forms.push(c1)#

#puts "New contact form of #{c1.name}"
#puts c1.details #calling reader method

c2 = ContactForm.new
c2.name = "mani"
c2.email_id = "raef@gmail.com"
c2.subject = "course enquiry"
c2.phone = "91234567"
c2.message = "want to learn js"
contact_forms.push(c2)
#puts "\nNew contact form of #{c2.name}"
#puts c2.details #calling reader method

contact_forms.each do |contact_form|
	binding.pry
	puts contact_form.name+" "+contact_form.subject
end
contact_forms.each do |contact_form|
	puts contact_form.details

end



