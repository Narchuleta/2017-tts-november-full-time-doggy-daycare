Rails.application.routes.draw do

  resources :owners
  resources :dogs
  # is the same as:
  # resources :dogs, only: [:index, :new, :create, :show, :edit, :update, :destroy]


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
