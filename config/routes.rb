Rails.application.routes.draw do
  resources :categories
  devise_for :users, :controllers => { registrations: 'registrations' }
  resources :articles do
    member do
      put "like" => "articles#upvote"
      put "unlike" => "articles#downvote"
    end
  end 
  root "articles#index"
end
 