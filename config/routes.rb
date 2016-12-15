Rails.application.routes.draw do

    resources :places, only: [:new, :create, :edit, :update]
    
    root to: 'places#index'

end
