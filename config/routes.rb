Rails.application.routes.draw do
  resource :sessions, only: [:create, :destroy]

  scope module: 'api' do
    namespace :v1 do
      resources :users
    end
  end

  match "/*path",
        to: proc {
    [
      204,
      {
        "Content-Type"                 => "text/plain",
        "Access-Control-Allow-Origin"  => CORS_ALLOW_ORIGIN,
        "Access-Control-Allow-Methods" => CORS_ALLOW_METHODS,
        "Access-Control-Allow-Headers" => CORS_ALLOW_HEADERS
      },
      []
    ]
  }, via: [:options, :head]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Serve websocket cable requests in-process
  # mount ActionCable.server => '/cable'
end
