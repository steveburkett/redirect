Rails.application.routes.draw do
  resources :redirect_urls
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'redirect_urls#index'
end
