Rails.application.routes.draw do
  resources :categories, only: %i[index create destroy]
  resources :books, only: %i[index create show update destroy]
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
