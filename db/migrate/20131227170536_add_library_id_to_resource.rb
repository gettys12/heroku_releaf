class AddLibraryIdToResource < ActiveRecord::Migration
  def self.up
    add_column :resources, :library_id,:integer
  end

  def self.down
    remove_column :resources, :library_id,:integer

  end
end
