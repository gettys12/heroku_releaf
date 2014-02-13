class Resource < ActiveRecord::Base
 
  attr_accessible :type, :library_id, :image
  belongs_to :library
  Paperclip.options[:command_path] = 'C:\RailsInstaller\ImageMagick'
  has_attached_file :image,
                    :styles => { :medium => "x300", :thumb => "x100" },
                    :default_url => "https://s3-us-west-1.amazonaws.com/",
                    :storage => :s3,
                    :bucket => 'releaf-files',
                    :s3_credentials => S3_CREDENTIALS,
                    :url => "/:image/:id/:style/:basename.:extension",
                    :path => ":image/:id/:style/:basename.:extension"
  validates_attachment_content_type :image, :content_type => ['image/jpeg', 'image/jpg', 'image/png']


end
