class Library < ActiveRecord::Base
 
  attr_accessible :name, :resources_attributes, :resources
  has_many :resources
  accepts_nested_attributes_for :resources
  
end
