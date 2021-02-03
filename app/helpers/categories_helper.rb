module CategoriesHelper
  def edit_art
    return if current_user == @article.user
    content_tag :div, (link_to 'Edit', edit_article_path(@article), class: 'yellow_color btn btn-outline-warning m-1')
  end

  def delete_art
    return if current_user == @article.user
    content_tag :div,
                (link_to 'Destroy', @article, method: :delete, data: { confirm: 'Are you sure?' },
                                              class: 'yellow_color btn btn-outline-warning m-1')
  end
end
