class LikesController < ApplicationController
  skip_before_action :verify_authenticity_token, only: [:destroy]
  before_filter :require_authentication

  def create
    @user = current_user
    if @like = current_user.likes.create(like_params)
      flash[:success] = "We've added #{@like.artist_name.titleize} to your likes."
    end
    redirect_to account_path
  end

  def destroy
    @user = current_user
    @like = current_user.likes.find(params[:id])
    @like.destroy
    flash[:success] = "Like has been removed."
    redirect_to account_path
  end

private

  def like_params
    params.require(:like).permit(:artist_name, :found_through)
  end
end
