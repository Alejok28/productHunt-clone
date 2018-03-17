module ProductsHelper
	def form_title
		@product.new_record? ? "Publicar producto" : "Modificar producto"
	end

	def header_style
	  if @product.image.exists?
	    %{ style="background-image: linear-gradient( rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5) ), url('#{@product.image.url}'); background-size: cover; background-position: center;" }.html_safe
	  else
	    ""
	  end
	end
end
