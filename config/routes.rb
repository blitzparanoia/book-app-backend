Rails.application.routes.draw do
  
  namespace :api do
    namespace :v1 do
      resources :books do
        resources :reviews
      end
    end
  end
end
