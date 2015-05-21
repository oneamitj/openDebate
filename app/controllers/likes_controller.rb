class LikesController < ApplicationController

	def create
		
		
		@like = Like.new(debate_id: params[:debate_id], user_id: params[:user_id])
		
		@like.save!
		redirect_to :back
		
	end

	def destroy
		@like = Like.find(params[:id])
		@like.destroy


		redirect_to :back
	end

end