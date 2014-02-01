class Resource < ActiveRecord::Base
 
  attr_accessible :type, :library_id, :image
  belongs_to :library
  has_attached_file :image

  
  
end
