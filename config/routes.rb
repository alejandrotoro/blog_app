Rails.application.routes.draw do
  root to: "articles#index"

  resources :articles # create, edit, update, new, create, delete, show
end
