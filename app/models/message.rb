class Message < ActiveRecord::Base

  attr_accessible :name, :email, :content
  attr_accessible :priority, type: Integer, default: 0

  validates_presence_of :name
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, :on=> :create
  validates_length_of :content, :maximum => 500
end