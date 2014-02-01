class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  attr_accessible :email, :password,:password_confirmation,:name
  has_many :user_events
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

end