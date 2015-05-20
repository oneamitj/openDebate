class CommentsController < ApplicationController



	def create
		@comment = Comment.new(params[:comment])

		if @comment.save!
			redirect_to debate_path(params[:comment][:debate_id])
		else
			redirect_to :back
		end
	end

	def edit
	end

end