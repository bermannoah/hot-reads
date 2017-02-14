Rails.application.routes.draw do
  root to: "reads#index"
  
  namespace :api do
    namespace :v1 do
      resources :links, only: [:create, :update]
    end
  end
end
