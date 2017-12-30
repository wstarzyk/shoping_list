Rails.application.routes.draw do
 root to: 'shop#index'
 get 'shop/show/:id', to: 'shop#show'
 get 'shop/new', to: 'shop#new'
 get 'shop/create', to: 'shop#create'
 get 'shop/edit/:id', to: 'shop#edit'
 get 'shop/update/:id', to: 'shop#update'
 get 'shop/destroy/:id', to: 'shop#destroy'
end