Rails.application.routes.draw do
  namespace :api do
    namespace :vi do
      resources :knives
      resources :owners
    end
  end
 
end
