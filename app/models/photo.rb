class Photo < ActiveRecord::Base
 
  attr_accessible :library_id, :image
  belongs_to :library
  has_attached_file :image
  validates_attachment_content_type :image, :content_type => ['image/jpeg', 'image/jpg', 'image/png']


end
