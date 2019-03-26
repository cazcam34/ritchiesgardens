class ContactMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.contact_mailer.message.subject
  #

  def creation_confirmation(contact)
    @contact = contact

    mail(
      to:       @contact.email,
      subject:  "New message from #{@contact.name} created!"
    )
  end

  def message
    @greeting = "Hi"

    mail to: "to@example.org"
  end
end
