class User < ActiveRecord::Base
  has_secure_password
  attr_accessible :email, :name, :password, :password_confirmation

  validates_presence_of :name, :email, :password, :password_confirmation
  validates_confirmation_of :password



end
