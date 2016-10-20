Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  devise_for :users
  resources :sponsors
  resources :students
  resources :admin
  resources :events
  resources :subscribers
  resources :volunteers, :only => [:index]
  resources :positions
  resources :goodcauses
  resources :products, :only => [:index]
  resources :schools, :only => [:index]
  resources :contacts, :only => [:new, :create]
  resources :posts

  get "/pages/:page" => "pages#show"
  get "/contacts" => "contacts#new"
  root "subscribers#new", page: "home"
end
