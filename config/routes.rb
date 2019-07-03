Rails.application.routes.draw do
  get 'static/index'
  root 'static#index', as: 'root'

  resources :photos
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
