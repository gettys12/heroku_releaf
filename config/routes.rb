Releaf::Application.routes.draw do

  devise_for :admins
  mount RailsAdmin::Engine => '/admin', :as => 'rails_admin'
  root :to => "home#index"
  devise_for :users, :controllers=>{:registrations=>'registrations'}
  resources :user_events
  resources :events
  resources :messages
  resources :libraries do
    resources :resources
  end
  get "/about" => "home#about"
  get "/libraries" => "libraries#old"
  get "/gallery" => "home#gallery"


end
