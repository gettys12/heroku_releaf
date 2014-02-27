class Library < ActiveRecord::Base
 
  attr_accessible :name, :photos_attributes, :photos
  has_many :photos
  accepts_nested_attributes_for :photos

  
end
