class Admin < ActiveRecord::Base
  attr_accessible :email, :password,:password_confirmation,:name

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

end