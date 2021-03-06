Rails.application.routes.draw do

  # for login
  devise_scope :user do
    get 'login', to:'devise/sessions#new'
  end

  # for sign up
  devise_scope :user do
    get 'signup', to: 'devise/registrations#new'
  end

  devise_for :users, controllers: {
    registrations: "registrations"
  }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'pages#index'

end
