Rails.application.routes.draw do
  resources :salas
  resources :locals
  resources :ingressos
  get 'adm/index'
  resources :apresentacaos
  resources :classes_eventos
  resources :cidades
  resources :estados
  resources :faixa_etaria
  resources :credit_cards
  root 'welcome#index'
  resources :eventos
  devise_for :users, controllers: { registrations: "registrations" }
  resources :users, only: [:index, :show]
  get 'adm', to: 'adm#index', as:'adm_painel'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
