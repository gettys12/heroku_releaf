class RegistrationsController < Devise::RegistrationsController
  helper 'application'

  def resource_name
    :user
  end

  def new
    @user = User.new

  end

  def create
    @user = User.new(params[:user])
    respond_to do |format|

    end
  end
  def after_inactive_sign_up_path_for(resource)
    # redirect to root
  end
# customize session controller
  class SessionsController < Devise::SessionsController
    def create
      super
    end
  end

end