class CommentsController < ApplicationController



	def create
		@comment = Comment.new(params[:comment])

		# binding.pry

		if not(@comment.description == "")
			@comment.save!
			redirect_to debate_path(params[:comment][:debate_id])
		else
			# notice: "Cant perform blank comment."
			redirect_to :back
		end
		if @comment.save
  			flash.now[:notice] = 'comment posted!'
		else
  				flash.now[:alert] = 'Comment cannot be left blank!'
		end

		
		end
	end

	def edit
	end

