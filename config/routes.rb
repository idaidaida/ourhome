Rails.application.routes.draw do
  root to: 'static_pages#top'

  resources :accounts, only: [:new, :create]
  resource :login_session, only: [:new, :create,:destroy]

end
