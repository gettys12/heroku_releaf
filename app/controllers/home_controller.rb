class HomeController < ApplicationController

  def index
    @libraries = Library.all
    @library_lists = @libraries.in_groups_of(3)
    @library_rest = @library_lists[1,@library_lists.length]
    @photos = Photo.all
    @events = Event.all
  end

  def about

  end

  def education

  end

  def distribution

  end

  def board

  end
  def donations

  end

  def contact
    @title = "Contact us"
    @message = Message.new
  end

  def gallery
    @libraries = Library.all
    @display_photos = []
    @libraries.each do |l|
      @display_photos.push(l.photos.first)
    end
    @display_photos
  end
end
