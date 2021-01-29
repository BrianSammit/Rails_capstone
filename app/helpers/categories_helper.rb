module CategoriesHelper
  def count_type(article, count)
    # return if article.nil?
    #
    # title = content_tag :h4, (
    #   link_to article.title, article, class: 'my-subtitle pl-1'
    # )
    # content = content_tag :p, (
    # article.body
    # )
    # more = conten_tag :p, (
    # link_to 'Read More', article, class: "orange_color_art"
    # )
    # text = content_tag :div, (title content + more), class: 'half p-2 my-border'
    # blob = content_tag :div,
    #    image_tag (article.image)
    # if @count.odd?
    #   content_tag :div,
    #   (blob + text).html_safe,
    #   class: 'col-12 col-md-6 p-0 d-flex'
    # else
    #   content_tag :div,
    #   (text + blob).html_safe,
    #   class: 'col-12 col-md-6 p-0 d-flex'
    # end
  end
end
