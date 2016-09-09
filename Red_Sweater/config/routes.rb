Rails.application.routes.draw do
  root :to => 'students#index'
  resources :sponsors do
    resources :students
  end

  resources :students
  
end
