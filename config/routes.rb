Rails.application.routes.draw do
  namespace :admin do
    resources :categories
  end
  devise_for :admins
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root  "home#index"

  authenticated :admin_user do
    root to: "admin#index", as: :admin_root
  end
  get "admin"=> "admin#index"
end

