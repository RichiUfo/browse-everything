BrowseEverything::Engine.routes.draw do
  post 'upload_file', to: 'browse_everything#upload_file'
  post 'create_sub_folder', to: 'browse_everything#create_sub_folder'
  get 'connect', to: 'browse_everything#auth', as: 'connector_response'
  match 'resolve', to: 'browse_everything#resolve', as: 'resolver', via: [:get, :post]
  match ':provider(/*path)', to: 'browse_everything#show', as: 'contents', via: [:get, :post]
  root to: 'browse_everything#index'
end
