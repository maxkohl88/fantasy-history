Fantasyhistory::Application.routes.draw do

  resources :posts do
    resources :comments
  end
  resources :rankings
  resources :teams

  root "welcome#index"
end
