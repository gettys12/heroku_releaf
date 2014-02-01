class AddMessageFields < ActiveRecord::Migration
  def self.up
    add_column :messages, :name,:string
    add_column :messages, :email,:string
    add_column :messages, :content,:string
    add_column :messages, :priority,:integer
  end

  def self.down
    remove_column  :messages, :name,:string
    remove_column :messages, :email,:string
    remove_column :messages, :content,:string
    remove_column :messages, :priority,:integer
  end

end
