class Library < ActiveRecord::Base
 
  attr_accessible :type, :name, :resources_attributes, :resources
  has_many :resources
  accepts_nested_attributes_for :resources
  
end
