
  <% @counter = 1 %>
  <% @articles.each_slice(2) do |article, article_1| %>
    <% if @counter.odd? %>
    <div class="media">
      <% if article.image.attached? %>
          <td><%= image_tag article.image, class: "container_art" %></td>
      <% end %>
      <div class="container container_art bg-white p-3">
        <h4 class="yellow_color font-weight-bolder"><%= article.category.name %></h4>
        <h5 class="bg_color_title font-weight-bolder"><%= article.title %></h5>
        <p class="p_article"><%= article.body %></p>
        <%= link_to 'Read More', article, class: "orange_color_art" %>
      </div>
    </div>

    <div class="media">
      <% if article_1.image.attached? %>
          <td><%= image_tag article_1.image, class: "container_art" %></td>
      <% end %>
      <div class="container container_art bg-white p-3">
        <h4 class="yellow_color font-weight-bolder"><%=article_1.category.name %></h4>
        <h5 class="bg_color_title font-weight-bolder"><%=article_1.title %></h5>
        <p class="p_article"><%=article_1.body %></p>
        <%= link_to 'Read More',article_1, class: "orange_color_art" %>
      </div>
    </div>

    <% else %>
     
     <div class="d-flex flex-row-reverse media">
      <% if article.image.attached? %>
          <td><%= image_tag article.image, class: "container_art" %></td>
      <% end %>
      <div class="container container_art bg-white p-3">
        <h4 class="yellow_color font-weight-bolder"><%= article.category.name %></h4>
        <h5 class="bg_color_title font-weight-bolder"><%= article.title %></h5>
        <p class="p_article"><%= article.body %></p>
        <%= link_to 'Read More', article, class: "orange_color_art" %>
      </div>
    </div>

    <div class="d-flex flex-row-reverse media">
      <% if article_1.image.attached? %>
          <td><%= image_tag article_1.image, class: "container_art" %></td>
      <% end %>
      <div class="container container_art bg-white p-3">
        <h4 class="yellow_color font-weight-bolder"><%=article_1.category.name %></h4>
        <h5 class="bg_color_title font-weight-bolder"><%=article_1.title %></h5>
        <p class="p_article"><%=article_1.body %></p>
        <%= link_to 'Read More',article_1, class: "orange_color_art" %>
      </div>
    </div>
    <% end %>

    <% @counter += 1%> 
  <% end %>