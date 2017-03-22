class ProfilesController < ApplicationController
  before_action :set_profile, only: [:show]

  # GET /profiles/1
  # GET /profiles/1.json
  def show
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_profile
      @profile = User.find(params[:id])
    end
end
