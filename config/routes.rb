Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # get "lists", to: "lists#index"
  # get "lists/new", to: "lists#new",  as: :new_list
  # post "lists", to: "lists#create"
  # get "lists/:id", to: "lists#show", as: :list
  # get "list/:id/bookmarks/new", to: "bookmarks#new"
  # post "list/:id/bookmarks", to: "bookmarks#create"
  # delete "list/:id/bookmarks/:id", to: "bookmarks#destroy"
  resources :lists, only: [:index, :new, :create, :show] do
    resources :bookmarks, only: [:new, :create, :destroy]
  end
end
