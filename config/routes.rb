Rails.application.routes.draw do
  devise_for :users
    resources :rsvps
   
  resources :events do 
   member do
    post 'rsvps', to: 'rsvps#create'
   end
  end
  
  root "events#index"

end