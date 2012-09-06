class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :authenticate_user!
  before_filter :set_current_user

  def set_current_user
    if user_signed_in?
    User.current_user = User.find_by_id(current_user.id)
      end
  end


end
