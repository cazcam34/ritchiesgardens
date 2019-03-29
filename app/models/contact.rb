class Contact < ApplicationRecord
  attr_accessor :name, :email, :phonenumber, :message
  validates :email,
    :presence => :true
  validates :message, :presence => :true
end
