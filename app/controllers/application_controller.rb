require 'rspotify'

class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :current_user
  # helper_method :link_to_image

  def current_user
    @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
  end

  # def link_to_image(image_path, target_link)
  #   link_to(image_tag(image_path, :border => "0"), target_link)
  # end
end
