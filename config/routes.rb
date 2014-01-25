RitleyApp::Application.routes.draw do


  root to: "ritleys#index"
  get "ritleys/golink/:id" => 'ritleys#golink', as: :golink
  get "ritleys/show_all" => 'ritleys#show_all', as: :show_all
  get "ritleys" => "ritleys#index", as: :ritleys
  post "ritleys" => 'ritleys#create'
  get "ritleys/new" => 'ritleys#new', as: :new
  get "ritleys/:id" => 'ritleys#preview', as: :preview
  get "ritleys/go/:random_id" => 'ritleys#go'
  get "ritleys/:id/edit" => 'ritleys#edit', as: :edit
  patch "ritleys/:id" => 'ritleys#update'

  
  

end
