Rails.application.routes.draw do
  mount LetterOpenerWeb::Engine, at: '/letter_opener_web' if Rails.env.development?

  devise_for :user_authenticates, controllers: { registrations: 'user_authenticates/registrations' }

  root 'static_pages#top'

  resources :posts
  resources :users
  get 'users/:id/setting', to: 'users#settings', as: 'settings'
  get 'locations/search', to: 'locations#search'

  get 'up' => 'rails/health#show', :as => :rails_health_check
end
