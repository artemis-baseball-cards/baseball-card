Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
  resources :projects
  
  get '/employees/:id/flip', to: 'employees#flip', as: 'flip'

  resources :employees do
    resources :others
  end
  resources :companies do
    resources :clients
  end

  root "pages#show", page: "home"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
