Rails.application.routes.draw do
  resources :sessions, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create, :show]
  resources :tasks #ligne pour définir les routes pour les tâches non defini dans cette parti

  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?
end
