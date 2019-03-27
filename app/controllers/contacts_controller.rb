class ContactsController < ApplicationController

  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      ContactMailer.creation_confirmation(@contact).deliver_now
      flash[:notice] = "Your enquiry has been sent. We'll be in touch #{@contact.name}!"
      redirect_to root_path
    else
      flash[:alert] = "#{@contact.errors.count} errors. Please re-enter enquiry below."
      render "pages/home"
    end
  end

  private

  def contact_params
    # *Strong params*: You need to *whitelist* what can be updated by the user
    # Never trust user data!
    params.require(:contact).permit(:name, :email, :phonenumber, :message)
  end

end
