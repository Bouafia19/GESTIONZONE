Rails.application.routes.draw do
  resources :promotion_immobilieres
  resources :hors_zones
  resources :zone_activites
  resources :zone_industrielles
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  get 'users/edit'

  get 'users/index'

  get 'users/new'

  get 'users/show'

  devise_for :users ,only: :session , path: 'session',path_name: {sign_in:'login',sign_out: 'logout'}
  resources :investisseurs
  resources :lots
  resources :zones
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index'
  get   'users/change_passd/:id', to: 'users#change_passd'
  get 'stock-alerts', to: 'investisseurs#alert_stock'
end
