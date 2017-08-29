Rails.application.routes.draw do
  resources :redirect_urls

  root 'redirect_urls#index'

  get 'redirect/*url' => 'redirect#redirect'
end
