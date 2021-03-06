Rails.application.routes.draw do
  root 'homes#index'
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  devise_scope :user do
    # get 'sign_in', :to => 'devise/sessions#new'
    get 'sign_out', :to => 'devise/sessions#destroy'
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
