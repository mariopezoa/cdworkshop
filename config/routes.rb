Rails.application.routes.draw do
  resources :visits
  root to: 'visits#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
