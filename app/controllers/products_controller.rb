class ProductsController < ApplicationController
  def index
    @products = Product.paginate(page: params[:page], per_page: 8, order: "updated_at DESC")
  end

  def show
    @product = Product.find(params[:id])
    @images = Array.new
    @images.push(@product.main_image)
    @images.push(@product.sub_image_0) if (@product.sub_image_0.url)
    @images.push(@product.sub_image_1) if (@product.sub_image_1.url)
    @images.push(@product.sub_image_2) if (@product.sub_image_2.url)
  end
end
