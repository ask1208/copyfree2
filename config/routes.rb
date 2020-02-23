Rails.application.routes.draw do

  devise_for :users,controllers: {
    registrations: 'users/registrations',
  }
  devise_scope :user do
    get 'phone_numbers', to: 'users/registrations#new_phone_number'
    post 'phone_numbers', to: 'users/registrations#create_phone_number'
  end
  root 'items#index'
  resources :items, only: :index
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
