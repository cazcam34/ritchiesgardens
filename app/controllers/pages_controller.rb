class PagesController < ApplicationController
  def home
    @contact = Contact.new
  end

  def about
  end

  def gallery
  end

  def contact
  end
end
