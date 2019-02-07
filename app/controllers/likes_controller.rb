class LikesController < ApplicationController

	before_action :authenticate_user, only: [:create, :destroy]

	def create
		Like.create(user: current_user, gossip: Gossip.find(params[:gossip_id]))
		redirect_back fallback_location: root_path
	end

	def destroy
	end

	private

  def authenticate_user
    unless current_user
      redirect_to new_session_path, danger: "Hmmmm, seems like you are not logged in 🤔"
    end
  end

end
