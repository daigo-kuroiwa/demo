Rails.application.routes.draw do
  
  root 'static_pages#home'
  
  resources :users
  get  '/concept',    to: 'static_pages#concept'
  get  '/about',   to: 'static_pages#about'
  get  '/contact', to: 'static_pages#contact'
  get '/signup', to: 'users#new'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  
  
 
  
  
  
  get 'lodges/new'
 

  get 'sessions/new'
  get 'users/new'

  
  get 'lodges/hostel'
  get 'lodges/hotel'
  get 'lodges/ryokan'
  
  get "hostel/:per" => "lodges#hostel_page"
  get "hostel_page" => "lodges#hostel"
  get "hotel/:per" => "lodges#hotel_page"
  get "hotel_page" => "lodges#hotel"
  get "ryokan/:per" => "lodges#ryokan_page"
  get "ryokan_page" => "lodges#ryokan"

  
  resources :lodges do
  post 'add' => 'likes#create'
  delete '/add' => 'likes#destroy'
  
  end
  
end