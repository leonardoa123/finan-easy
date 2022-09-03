Rails.application.routes.draw do
  devise_for :users
  devise_scope :user do  
    get '/users/sign_out' => 'devise/sessions#destroy'     
  end


  root :to => 'main#home'
  resources :remuneracions
  resources :empleados
  resources :proveedors
  resources :clientes
  resources :egresos
  resources :ingresos
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
