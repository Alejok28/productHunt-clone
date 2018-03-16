class ProductsController < ApplicationController
	before_action :authenticate_user!,  except: [:index, :show]
	def index
		@products = Product.all
	end

	def new
		@product = Product.new
	end

	def show
		@product = Product.find(params[:id])
	end

	def create
		@product = Product.new(product_params)
		if @product.save
			redirect_to products_path, notice: "El producto fue creado exitosamente"
		else
			render :new
		end
	end

	def edit
		@product = Product.find(params[:id])
	end

	def update
		product = Product.find(params[:id])
		if product.update(product_params)
			redirect_to products_path, notice: "El producto fue editado exitosamente"
		else
			render :edit
		end
	end

	def destroy
		product = Product.find(params[:id])
		product.destroy

		redirect_to products_path, notice: "El producto fue eliminado exitosamente"

	end

	private
	def product_params
		params.require(:product).permit(:name, :url, :description)
	end

end
