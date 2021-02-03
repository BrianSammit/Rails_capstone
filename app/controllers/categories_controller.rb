class CategoriesController < ApplicationController
  before_action :set_category, only: %i[show edit update destroy]
  before_action :authenticate_user!

  # GET /categories
  # GET /categories.json
  def index
    if params.key?(:category)
      @category = Category.find_by_name(params[:category])
      @articles = Article.where(category: @category).order(cached_votes_score: :desc)
    else
      @articles = Article.all.order(cached_votes_score: :desc)
    end
    @count = 1
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_category
    @category = Category.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def category_params
    params.require(:category).permit(:name, :display_in_navbar)
  end
end
