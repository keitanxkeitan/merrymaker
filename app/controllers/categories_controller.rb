class CategoriesController < ApplicationController
  def index
    @categories = Category.all
    @products = Product.paginate(page: params[:page], per_page: 9, order: "updated_at DESC")
    render "show"
  end
  
  def show
    @categories = Category.all
    @category = Category.find(params[:id])
    @products = @category.products.paginate(page: params[:page], per_page: 9, order: "updated_at DESC")
  end
end
