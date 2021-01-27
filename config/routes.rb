Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :owners do #nested route for sales???
        resources :knives
      end
    end
  end
 
end
