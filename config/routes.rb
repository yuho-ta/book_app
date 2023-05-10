Rails.application.routes.draw do
  resources :books
  get 'lists/top'
  root to: 'lists#top'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
