class AdminsController < ApplicationController

  before_filter :authenticate_admin!
  before_filter :save_login_state, :only => [:new, :create]

# Inside your controllers and views
#  admin_signed_in?
#  current_admin
#  admin_session

  def index
    #@admins = admin.all
    @admin = Admin.last
  end

  def new
    @admin = Admin.new(:password=>params[:password])
  end

  def show

  end
  def create
    @admin = Admin.new(params[:admin])
    if @admin.save
      flash[:notice] = "You Signed up"
      flash[:color]="valid"
      respond_to do |format|
        format.json
      end
    else
      flash[:notice] = "Form is invalid"
      flash[:color]="invalid"
      render "new"
    end
  end

  def edit
    @admin = Admin.find session[:admin_id]
  end

  def update
    @admin = Admin.find session[:admin_id]
    @admin.adminname = params[:adminname]
    if @admin.save
      # Handle a successful update.
      redirect_to(:controller => 'sessions', :action => 'home')
    else
      render 'edit'
    end
  end


end
