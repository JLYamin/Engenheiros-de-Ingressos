Rails.application.routes.draw do
  resources :classes_eventos
  resources :categories
  resources :cidades
  resources :estados
  resources :faixa_etaria
  root 'welcome#index'
  resources :eventos
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
