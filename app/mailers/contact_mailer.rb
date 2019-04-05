class ContactMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.contact_mailer.message.subject
  #

  def creation_confirmation(contact)
    @contact = contact

    mail(
      to:       "ritchiesgardens@gmail.com",
      subject:  "New enquiry from website: #{@contact.name}."
    )
  end
end
