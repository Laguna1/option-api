class CategoriesController < ApplicationController
  before_action :set_category, only: :destroy

  def index
    @categories = Category.all
    render json: @categories
  end

  private
     def category_params
       params.permit(:name)
     end
     def set_category
       @category = Category.find(params[:id])
     end
end
