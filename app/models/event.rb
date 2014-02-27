class Event < ActiveRecord::Base

  attr_accessible  :name, :location, :description,:end_time, :start_time
  scope :before, lambda {|end_time| {:conditions => ["end_time < ?",Event.format_date(end_time)] }}
  scope :after, lambda {|start_time| {:conditions => ["start_time > ?", Event.format_date(start_time)] }}


  def as_json(options = {})
    {
        :id => self.id,
        :title => self.name,
        :description => self.description || "",
        :start => self.start_time,
        :end => self.end_time,
        :allDay => false,
        :recurring => false,
        :url => Rails.application.routes.url_helpers.event_path(id)
    }
  end

  def self.format_date(date_time)
    Time.at(date_time.to_i).to_formatted_s(:db)
  end

  def self.search(search)
    if search
      find(:all, :conditions => ['name LIKE ?', "%#{search}%"])
    else
      find(:all)
    end
  end

end
