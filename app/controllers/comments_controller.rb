class CommentsController < ApplicationController
	def create
		@post = Post.find(params[:post_id])
		if post
			post.comments.create(comment_params)
			flash[:success] = 'Thanks for comment!'
			redirect_to post
		else
			flash[:danger] = 'Post not found'
			redirect_to root_url
		end
	end
	def destroy
	    @post = Post.find(params[:post_id])
	    @comment = @post.comments.find(params[:id])
	    @comment.destroy
	    redirect_to post_path(@post)
	end
	private

	def comment_params
		params.require(:comment).permit(:commenter, :body)	
	end
end
