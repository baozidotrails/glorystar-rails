Rails.application.routes.draw do

  


  root 'pages#home'
  
  get 'church/history'
  get 'church/vision'
  get 'church/fulltime'
  get 'church/elder'
  get 'church/deacon'
  get 'church/organization'
  get 'church/location'
  get 'church/traffic'
  get 'church/contact'


  devise_for :users

  # backend
  namespace :admin do
    get '', to: 'dashboard#index', as: '/'
    resources :staffs
    resources :speakers do
      collection { post :import }
    end
    resources :pages
    resources :news
    resources :departments
  end

end