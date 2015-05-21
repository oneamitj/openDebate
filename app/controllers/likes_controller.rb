class LikesController < ApplicationController

	def create
		
		
		@like = Like.new(debate_id: params[:debate_id], user_id: params[:user_id])

		# binding.pry
		
		@like.save!
		redirect_to :back
		
	end

	def destroy
		@like = Like.find(params[:id])
		@like.destroy

		# binding.pry

		redirect_to :back
	end

end