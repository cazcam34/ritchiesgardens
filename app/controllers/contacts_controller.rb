class ContactsController < ApplicationController

  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      ContactMailer.creation_confirmation(@contact).deliver_now
      flash.now[:notice] = "Your enquiry has been sent. We'll be in touch #{@contact.name}!"
      if URI(request.referer).path == "/contact"
        render "pages/contact"
      else
        render "pages/home"
      end
    else
      flash.now[:alert] = "#{@contact.errors.count} errors. Please re-enter enquiry below."
      if URI(request.referer).path == "/contact"
        render "pages/contact"
      else
        render "pages/home"
      end
    end
  end

  private

  def contact_params
    # *Strong params*: You need to *whitelist* what can be updated by the user
    # Never trust user data!
    params.require(:contact).permit(:name, :email, :phonenumber, :message)
  end

end
