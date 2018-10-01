Rails.application.routes.draw do
  devise_for :users
  root to: "articles#index"

  resources :articles # create, edit, update, new, create, delete, show
end
