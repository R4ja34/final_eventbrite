Rails.application.routes.draw do
  # get 'checkout/susses'
  # get 'checkout/cancel'
  # get 'users/show'
  # get 'attendances/index'
  # get 'attendances/new'
  # get 'attendances/show'
  # get 'attendances/edit'
  # get 'events/index'
  # get 'events/show'
  # get 'events/new'
  # get 'events/edit'
  get 'static_pages/index'
  get 'static_pages/secret'
  root "events#index"
  devise_for :users
  resources :users
  resources :events do
    resources :attendances
  end

  scope '/checkout' do
    post 'create', to: 'checkout#create', as: 'checkout_create'
    get 'success', to: 'checkout#success', as: 'checkout_success'
    get 'cancel', to: 'checkout#cancel', as: 'checkout_cancel'
  end


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
  

  # Defines the root path route ("/")
end
