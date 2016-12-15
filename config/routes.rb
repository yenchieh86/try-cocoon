Rails.application.routes.draw do

    resources :places, only: [:show, :create, :edit, :update, :destroy]
    
    root to: 'places#index'

end
