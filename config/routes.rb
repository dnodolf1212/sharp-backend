Rails.application.routes.draw do
  namespace :api do
    namespace :vi do
      resources :knives #open route for index?? only [:index]???
        resources :owners do #nested route for sales???
          resources :knives
        end
    end
  end
 
end
