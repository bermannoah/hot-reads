Rails.application.routes.draw do
  root to: "reads#index"
  
  
  
  namespace :api do
    namespace :v1 do
      resources :links, only: [:create, :update]
      post "/links", to: 'links#create'
    end
  end
end
