Rails.application.routes.draw do
  resources :bookings do
    collection {post :import}
  end
root to: "bookings#index"
get 'admindata', to: 'bookings#admindata', as: :admindata
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
