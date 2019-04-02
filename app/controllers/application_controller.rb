class ApplicationController < ActionController::Base

  protected

  def default_url_options
  { host: ENV["ritchiesgardens.herokuapp.com"] || "localhost:3000" }
  end
end
