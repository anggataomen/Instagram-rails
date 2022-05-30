Rails.application.routes.draw do
  root 'pages#home'

  devise_for :users,
    path: '',
    path_names: {sign_in: 'log_in', sign_out: 'log_out', edit: 'profile', sign_up: 'registration'},
    controllers: { omniauth_callbacks: 'omniauth_callbacks' }

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
