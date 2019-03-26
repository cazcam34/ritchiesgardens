class ContactsController < ApplicationController

  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      raise
      flash.now[:error] = nil
      flash.now[:notice] = 'Thank you for your message!'
    else
      flash.now[:error] = 'Cannot send message.'
      render :new
    end
  end

  private

  def contact_params
    # *Strong params*: You need to *whitelist* what can be updated by the user
    # Never trust user data!
    params.require(:contact).permit(:name, :email)
  end

end
