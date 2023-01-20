Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions'
  }
  resources :users, only: [:show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :works
  root 'works#index'
  get 'works/:id' => 'works#show'
  patch 'works/:id' => 'works#update'
  delete 'works/:id' => 'works#destroy'
  get 'works/:id/edit' => 'works#edit'

end
