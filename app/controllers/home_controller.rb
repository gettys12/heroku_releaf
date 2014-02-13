class HomeController < ApplicationController

  def index
    @libraries = Library.all
    @library_lists = @libraries.in_groups_of(3)
    @library_rest = @library_lists[1,@library_lists.length]
    @resources = Resource.all
  end

  def about

  end

  def education

  end

  def distribution

  end

  def donations

  end

  def contact
    @title = "Contact us"
  end

  def gallery
    @libraries = Library.all
    @display_resources = []
    @libraries.each do |l|
      @display_resources.push(l.resources.first)
    end
    @display_resources
  end
end
