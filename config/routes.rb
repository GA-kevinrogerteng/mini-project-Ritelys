RitleyApp::Application.routes.draw do
  resources :users, :sessions

  root to: "ritleys#index"

  get'signin' => 'sessions#new'

  get "ritleys/golink/:id" => 'ritleys#golink', as: :golink

  delete "ritleys/:id" => 'ritleys#destroy', as: :destroy

  get "ritleys/show_all" => 'ritleys#show_all', as: :show_all

  get "ritleys" => "ritleys#index", as: :ritleys

  post "ritleys/" => 'ritleys#create'

  get "ritleys/new" => 'ritleys#new', as: :new

  get '/signup' => 'users#new', as: :signup

  get "ritleys/:id" => 'ritleys#preview', as: :preview

  get "ritleys/go/:random_id" => 'ritleys#go'

  get "ritleys/:id/edit" => 'ritleys#edit', as: :edit
  
  patch "ritleys/:id" => 'ritleys#update', as: :update

  #why is he using a match? WAHT IS A MATCH?????

  match '/signout', to: 'sessions#destroy', via: :delete

  

  #post '/ritley/user' => 'users#create' as: :create
  
  

end
