Rails.application.routes.draw do
  devise_for :users
  resources :others
  resources :projects
  resources :employees


  devise_scope :user do
    root to: "devise/sessions#new"
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
