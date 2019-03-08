Rails.application.routes.draw do
  resources :promotion_immobilieres
  resources :hors_zones
  resources :zone_activites
  resources :states
  resources :zone_industrielles
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  get 'users/edit'

  get 'users/index'

  get 'users/new'

  get 'users/show'

  get 'welcome/index'

  devise_for :users ,only: :session , path: 'session',path_name: {sign_in:'login',sign_out: 'logout'}
  resources :investisseurs
  resources :lots

  resources :zones
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'investisseurs#index'
  get   'users/change_passd/:id', to: 'users#change_passd'
  get   'zone_activites/static/:id', to: 'zone_activites#static'
  get   'zone_industrielles/static/:id', to: 'zone_industrielles#static'
  get   'hors_zones/static/:id', to: 'hors_zones#static'
  get   'promotion_immobilieres/static/:id', to: 'promotion_immobilieres#static'

  get 'stock-alerts', to: 'investisseurs#alert_stock'

end
