Rails.application.routes.draw do
  devise_for :users
  resources :others
  resources :projects
  resources :employees


  root "pages#show", page: "home"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
