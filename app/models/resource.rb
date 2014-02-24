class Resource < ActiveRecord::Base
 
  attr_accessible :library_id, :image, :image_content_type, :image_file_size
  belongs_to :library
  has_attached_file :image,
                    :styles => { :medium => "x300", :thumb => "x100" }
  validates_attachment_content_type :image, :content_type => ['image/jpeg', 'image/jpg', 'image/png']


end
