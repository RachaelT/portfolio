class CategoriesController < ApplicationController
  def show
    if params[:id] =~ /\d+/ then
      @category = Category.find(params[:id]) 
      @page_id = params[:id].to_sym
    else
      @category = Category.find_by(name: params[:id].titlecase)
      redirect_to(@category)
    end
  end
  
  def create
      @category = Category.new(category_params)
  end
  
  def new
      @category = Category.new
  end
  
  private
  
  def category_params
      params.require(:category).permit(:name)
  end

#  @theatre = Category.find_by(name: 'Theatre')
#  @computing = Category.find_by(name: 'Computing')
#  @other = Category.find_by(name: 'Other')
end
