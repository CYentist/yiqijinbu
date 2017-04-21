Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :courses do
    member do
      post :follow
      post :unfollow
    end
    resources :events
  end

  root 'courses#index'

  namespace :admin do
    resources :courses do
      member do
        post :publish
        post :hide
      end
    end
  end

end
