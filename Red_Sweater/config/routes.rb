Rails.application.routes.draw do
  root :to => 'students#index'
  resources :sponsors
  resources :students
  resources :admin
  resources :events
end
