Rails.application.routes.draw do
  root to: 'angular#show'

  get "/pages/:page" => "pages#show", defaults: { format: :json }
end