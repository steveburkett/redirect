Rails.application.routes.draw do
  resources :redirect_urls

  root 'redirect_urls#index'

  match "*path", to: "redirect#redirect", via: :all
end
