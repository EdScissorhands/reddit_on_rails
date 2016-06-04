class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def is_moderator?
    Sub.find_by(params[:moderator_id]).id == User.find_by(params[:id]).id
    #does this work?
  end

  def logged_in?
    current_user
  end

  def current_user
    User.find_by(session_token: session[:session_token])
  end
end
