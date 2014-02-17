class Resource < ActiveRecord::Base
 
  attr_accessible :type, :library_id, :image
  belongs_to :library
  has_attached_file :image,
                    :styles => { :medium => "x300", :thumb => "x100" },
                    :storage => :s3,
                    :s3_credentials => {
                        :access_key_id => ENV['S3_KEY'],
                        :secret_access_key => ENV['S3_SECRET']
                    },
                    :bucket => ENV['S3_BUCKET'],
                    :path => ":attachment/:id"
  validates_attachment_content_type :image, :content_type => ['image/jpeg', 'image/jpg', 'image/png']


end
