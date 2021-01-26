Rails.application.routes.draw do
  resources :categories
  devise_for :users, :controllers => { registrations: 'registrations' }
  resources :articles
  root "articles#index"
end
 