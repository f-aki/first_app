class FightsController < ApplicationController

  before_action :authenticate_user

  def create
    @fight = Fight.new(user_id: @current_user.id, post_id: params[:post_id])
    @fight.save
    redirect_to("/posts/#{params[:post_id]}")
  end

  def destroy
    @fight = Fight.find_by(user_id: @current_user.id, post_id: params[:post_id])
    @fight.destroy
    redirect_to("/posts/#{params[:post_id]}")
  end

end
