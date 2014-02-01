class UserEvent < ActiveRecord::Base

  attr_accessible :user_id, :name, :location, :description,:time_start, :time_end, :date_end, :date_start
  belongs_to :user


end
