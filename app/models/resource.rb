class Resource < ActiveRecord::Base
 
  attr_accessible :type, :library_id, :image
  belongs_to :library
  Paperclip.options[:command_path] = 'C:\RailsInstaller\ImageMagick'
  has_attached_file :image,
                    :styles => { :medium => "x300", :thumb => "x100" },
                    :storage => :s3,
                    :bucket => 'releaf-files',
                    :s3_credentials => "#{Rails.root}/config/s3.yml",
                    :path => ":attachment/:id/:style.:extension",
                    :bucket => "releaf-files"
  validates_attachment_content_type :image, :content_type => ['image/jpeg', 'image/jpg', 'image/png']


end
