Rails.application.routes.draw do
  resources :eleitores
  resources :votos
  resources :candidatos
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
