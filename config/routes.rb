RitleyApp::Application.routes.draw do


  root to: "ritleys#index"

  get "ritleys" => "ritleys#index", as: :ritleys
  post "ritleys" => 'ritleys#create'
  get "ritleys/new" => 'ritleys#new'
  get "ritleys/:id" => 'ritleys#show'
  get "ritleys/:id/edit" => 'ritleys#edit'
  get "ritleys/go/:random_id" => 'ritleys#go'

  
  

end
