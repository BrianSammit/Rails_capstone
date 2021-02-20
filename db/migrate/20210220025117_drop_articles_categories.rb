class DropArticlesCategories < ActiveRecord::Migration[6.0]
  def change
    drop_table :articles_categories
  end
end
