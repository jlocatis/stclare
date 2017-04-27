Rails.application.routes.draw do
  devise_for :users
  namespace :admin do
    resources :units
    resources :users
    root to: "units#index"
  end

  root to: 'staticpages#index'

  get "/about" => "staticpages#about"
  get "/userinfo" => "users#index"
  get "/bylaws" => "staticpages#bylaws"
  get "/postexample" => "staticpages#post"
  post "/hoacontact" => "users#send_mail"
end
