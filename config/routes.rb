Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: 'omniauth_callbacks' }
  root 'top#index'

  resources :list, only: %i(new create edit update destroy) do
    resources :card, except: %i(index)
  end
end
