Rails.application.routes.draw do
  resources :bookings do
    collection {post :import}
  end
root to: "bookings#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
