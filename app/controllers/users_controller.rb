class UsersController < ApplicationController
  
  before_filter :authenticate_user!
  before_filter :save_login_state, :only => [:new, :create]

  
  def index
    #@users = User.all
  end
  
  def new

  end

  def show

  end
  def create
    @user = User.new(params[:user])
        if @user.save
          flash[:notice] = "You Signed up"
          flash[:color]="valid"
        else
          flash[:notice] = "Form is invalid"
          flash[:color]="invalid"
          render "new"
        end
  end
  
  def edit
    @user = User.find session[:user_id]
  end

  def update
    @user = User.find session[:user_id]
    @user.username = params[:username]
    if @user.save
      # Handle a successful update.
      redirect_to(:controller => 'sessions', :action => 'home')
    else
      render 'edit'
    end
  end
  
  
end
