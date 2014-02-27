class UserEventsController < ApplicationController

  respond_to :js

  def index
    @events = Event.scoped
    @events = @events.after(params['start']) if (params['start'])
    @events = @events.before(params['end']) if (params['end'])
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @events }
      format.json  { render :json => @events }
    end
  end

  def new
    @user = User.find(params[:user_id])
    @event = @user.events.build
    respond_with(@event)
    respond_to do |format|
      format.html # sign_in.html.erb
      format.xml  { render :xml => @event }
    end
  end

  def create
    @event = Event.new(params[:event])

  end



  def show
    @event = Event.find(params[:id])
    respond_with(@event)
  end

  def edit
    @event = Event.find session[:event_id]
  end

  def update

  end


end
