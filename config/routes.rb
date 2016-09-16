Rails.application.routes.draw do
  devise_for :users
  resources :sponsors
  resources :students
  resources :admin
  resources :events

  get "/pages/:page" => "pages#show"
  root "pages#show", page: "home"
end
