Rails.application.routes.draw do
  root "post#index"
  namespace :admin do
    resources :posts
  end
  resources :posts
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
