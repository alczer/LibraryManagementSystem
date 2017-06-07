Rails.application.routes.draw do

  resources :item_authors
  resources :item_categories
  resources :loans
  resources :penalties
  resources :publishers
  resources :categories
  resources :authors

  match 'loans/:loan_id/:item_id/return', :to => 'loans#return',:as => 'loan_return', :via => :post

  match 'loans/:loan_id/:item_id/undo_return', :to => 'loans#undo_return',:as => 'loan_undo_return', :via => :post


  get 'users/profile'

  get 'items/search_advanced'

  get 'items/search'

  get 'items/new'

  get 'items/create'

  get 'item/new'

  get 'item/create'

  devise_for :users
  get 'welcome/index'

  root 'welcome#index'

  resources :items
  resources :users, only: [:show, :update]

  get 'profile', to: 'users#show'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
