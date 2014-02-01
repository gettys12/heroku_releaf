class Event < ActiveRecord::Base

  attr_accessible  :name, :location, :description,:time_start, :time_end, :date_end, :date_start

  scope :before, lambda {|end_time| {:conditions => ["date_end < ?", Event.format_date(end_time)] }}
  scope :after, lambda {|start_time| {:conditions => ["date_start > ?", Event.format_date(start_time)] }}


  def as_json(options = {})
    {
        :id => self.id,
        :title => self.name,
        :description => self.description || "",
        :start => self.date_start,
        :end => self.date_start,
        :allDay => false,
        :recurring => false,
        :url => Rails.application.routes.url_helpers.event_path(id)
    }
  end

  def self.format_date(date_time)
    Time.at(date_time.to_i).to_formatted_s(:db)
  end

end
