#rubocop:disable Layout/EmptyLineAfterGuardClause
module ArticlesHelper
  def count_type(article, count)
    return if article.nil?
    category = content_tag :h4, (link_to article.category.name, article, class: 'yellow_color font-weight-bolder')
    title = content_tag :h5, (link_to article.title, article, class: 'bg_color_title font-weight-bolder')
    content = content_tag :p, truncate(strip_tags(article.body), length: 170)
    more = content_tag :div, (link_to 'Read More', article, class: 'orange_color_art')
    text = content_tag :div, (category + title + content + more), class: 'container container_art bg-white p-3'
    blob = content_tag :div, image_tag(article.image, style: 'width: 336px; height: 300px')
    if count.odd?
      content_tag :div, (blob + text).html_safe, class: 'media'
    else
      content_tag :div, (text + blob).html_safe, class: 'media'
    end
  end
end
#rubocop:enable Layout/EmptyLineAfterGuardClause
