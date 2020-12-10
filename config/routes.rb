Rails.application.routes.draw do
  root 'pages#home'
  get '/help', to: 'pages#help'
  get '/contact', to: 'pages#contact'
  devise_for :users
  as :user do
    get "signin" => "devise/sessions#new"
    post "signin" => "devise/sessions#create"
    delete "signout" => "devise/sessions#destroy"
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
