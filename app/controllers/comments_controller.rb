class CommentsController < ApplicationController
	def create
		product = Product.find(params[:product_id])
		product.comments.create(comment_params)
		redirect_to product
	end

	private
	def comment_params
		params.require(:comment).permit(:body).merge(user: current_user)
	end

end
