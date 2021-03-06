Releaf::Application.routes.draw do

  devise_for :admins
  mount RailsAdmin::Engine => '/admin', :as => 'rails_admin'
  root :to => "home#index"
  devise_for :users, :controllers=>{:registrations=>'registrations', :sessions=>'sessions'}
  resources :user_events
  resources :events
  resources :messages
  resources :libraries do
    resources :photos
  end
  get "/searched" => "events#search"
  get "/about" => "home#about"
  get "/contact" => "home#contact"
  get "/distribution" => "home#distribution"
  get "/education" => "home#education"
  get "/donations" => "home#donations"
  get "/board" => "home#board"
  get "/gallery" => "home#gallery"


end
