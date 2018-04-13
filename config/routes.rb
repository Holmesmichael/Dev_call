Rails.application.routes.draw do
  devise_for :users
  resources :events do 
    member do 
      put "RSVP", to: "events#upvote"
    end
  end
  
  root "events#index"

end
