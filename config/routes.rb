Rails.application.routes.draw do
  resources :contacts
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # Rota para nossa página Index
  root to:'static_pages#index'
  # "nome_controller" "#" "nome_action"

  # rota para  Contato
  get 'contato', to:'static_pages#contato'

# rota para  Sobre
  get 'sobre', to:'static_pages#sobre'

end
