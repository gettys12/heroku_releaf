class AddPaperclipToResources < ActiveRecord::Migration
  def self.up
    add_column :resources, :image_file_name,:string
    add_column :resources, :image_content_type,:string
    add_column :resources, :image_file_size,:integer
    add_column :resources, :image_updated_at,:datetime
  end

  def self.down
    remove_column :resources, :image_file_name,:string
    remove_column :resources, :image_content_type,:string
    remove_column :resources, :image_file_size,:string
    remove_column :resources, :image_updated_at,:string
  end
end
