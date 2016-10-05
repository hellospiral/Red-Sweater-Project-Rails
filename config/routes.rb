Rails.application.routes.draw do
  devise_for :users
  resources :sponsors
  resources :students
  resources :admin
  resources :events
  resources :subscribers
  resources :volunteers
  resources :positions
  resources :goodcauses
  resources :products, :only => [:index]
  resources :schools, :only => [:index]

  get "/pages/:page" => "pages#show"
  root "subscribers#new", page: "home"
end
