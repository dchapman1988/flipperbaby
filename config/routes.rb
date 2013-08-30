Flipperbaby::Application.routes.draw do
  root 'pages#index'
  resources :gallery_pieces
  resources :galleries
  devise_for :users
end
