class AddEventModel < ActiveRecord::Migration
  def self.up
    add_column :events, :name,:string
    add_column :events, :latitude,:float
    add_column :events, :longitude,:float
    add_column :events, :user_id, :integer
    add_column :events, :description,:string
    add_column :events, :time_start, :datetime
    add_column :events, :time_end,:datetime
    add_column :events, :date_start, :datetime
    add_column :events, :date_end,:datetime
  end

  def self.down
    remove_column  :events, :name,:string
    remove_column :events, :latitude,:float
    remove_column :events, :longitude,:float
    remove_column :events, :user_id, :integer
    remove_column :events, :description,:string
    remove_column :events, :time_start, :datetime
    remove_column :events, :time_end,:datetime
    remove_column :events, :date_start, :datetime
    remove_column :events, :date_start, :datetime
  end
end
