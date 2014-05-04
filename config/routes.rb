Fantasyhistory::Application.routes.draw do

  resources :posts do
    resources :comments
  end
  resources :rankings
  resources :teams
  resources :owners, :main
  resources :sports do
    resources :leagues
  end
  resources :leagues do
    resources :histories do
    end
  end
  root "welcome#index"

  post ':league/:league_id/histories/new' => 'histories#create'

end
