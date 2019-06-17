Rails.application.routes.draw do
  get 'adm/index'
  resources :apresentacaos
  resources :classes_eventos
  resources :categories
  resources :cidades
  resources :estados
  resources :faixa_etaria
  root 'welcome#index'
  resources :eventos
  devise_for :users
  resources :users, only: [:index, :show]
  get 'adm', to: 'adm#index', as:'adm_painel'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
