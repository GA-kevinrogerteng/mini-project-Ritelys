RitleyApp::Application.routes.draw do


  root to: "ritleys#index"

  get "ritleys" => "ritleys#index", as: :ritleys
  get "ritleys/link" => 'ritley#go_to' as: :go_to
  post "ritleys" => 'ritleys#create'
  get "ritleys/new" => 'ritleys#new'
  get "ritleys/:id" => 'ritleys#show'

  
  

end
