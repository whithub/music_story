class SessionsController < ApplicationController

  def create
    if user = User.from_omniauth(request.env['omniauth.auth'])
      session[:user_id] = user.id
    end
    redirect_to root_path, :notice => "Welcome #{user.name}"
  end

  def failure
    flash[:alert] = "Authentication error: #{params[:message].humanize}"
    redirect_to root_url
  end

  def destroy
    session.clear
    redirect_to root_path
  end
end
