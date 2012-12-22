class ContactMailer < ActionMailer::Base
  default from: "rhr4422@gmail.com"

  def contact_us(contact)
	@contact = contact
	mail(:to => "rhr4422@gmail.com", :subject => "Request to Contact")
  end
end
