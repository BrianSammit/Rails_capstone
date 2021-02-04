class CategoriesController < ApplicationController
  before_action :set_category, only: %i[show edit update destroy]
  before_action :authenticate_user!


  def index
    if params.key?(:category)
      @articles = Article.where(category: Category.find_by_name(params[:category])).order(cached_votes_score: :desc)
    else
      @articles = Article.all.order(cached_votes_score: :desc)
    end
    @count = 1
  end

  private


  def set_category
    @category = Category.find(params[:id])
  end

  def category_params
    params.require(:category).permit(:name, :display_in_navbar)
  end
end
