class ConnectionsController < ApplicationController
  def index
  end

  def create
    Connection.where(follower_id: current_user, followed_user: params[:id]).first_or_create
    
  end

  def destroy
  end
end
