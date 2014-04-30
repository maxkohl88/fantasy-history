Fantasyhistory::Application.routes.draw do

  resources :posts do
    resources :comments
  end
  resources :rankings
  resources :teams
  resources :owners, :sports, :main
  resources :leagues do
    resources :histories do
      collection { post :import }
    end
  end
  resources :histories
  root "welcome#index"
end
