class VotesController < ApplicationController
  def create
    product = Product.find(params[:product_id])
    product.votes.create(user: current_user)
    redirect_to root_path
  end

  def destroy
    product = Product.find(params[:product_id])
    product.votes.where(user: current_user).take.try(:destroy)
    redirect_to root_path
  end
end
