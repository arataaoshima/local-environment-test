Rails.application.routes.draw do
  resources :categories
  resources :subcontents
  resources :posts
  root 'home#top'
  post '/posts/category_edit/:id' => 'posts#category_edit'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
