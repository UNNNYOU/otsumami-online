Rails.application.routes.draw do
  devise_for :user_authenticates, controllers: {registrations: "user_authenticates/registrations"}

  root "static_pages#top"

  resources :posts
  get "users/show"
  get "up" => "rails/health#show", :as => :rails_health_check
end
