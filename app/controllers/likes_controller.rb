class LikesController < ApplicationController

	def create
		@like = Like.new(params[:like])

		binding.pry
		if @like.save!
			redirect_to debate_path(params[:like][:debate_id])
		else
			redirect_to :back
		end
	end

	def destroy
		@like = Like.find(params[:id])
		@like.destroy

		redirect_to :back
	end

end