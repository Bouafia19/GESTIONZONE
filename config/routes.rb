Rails.application.routes.draw do


  resources :anciennes
  resources :extensions
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :lots
  resources :users



  get 'users/edit'

  get 'users/index'

  get 'zones/ouled_saber'

  get 'zones/el_eulma'

  get 'zones/extension'

  get 'zones/ancienne'

  get 'zones/setif_inve'

  get 'zones/leaflet'


  get 'users/new'

  get 'users/show'

  get 'welcome/index'

  get 'zones/search'


  get 'investisseurs/search'

  get 'investisseurs/bord'

  get 'zones/static'



  get "mailbox/inbox" => "mailbox#inbox", as: :mailbox_inbox
  get "mailbox/sent" => "mailbox#sent", as: :mailbox_sent
  get "mailbox/trash" => "mailbox#trash", as: :mailbox_trash

  resources :conversations do
    member do
      post :reply
      post :trash
      post :untrash
    end
  end

  devise_for :users ,only: :session , path: 'session',path_name: {sign_in:'login',sign_out: 'logout'}

  resources :zones
  resources :investisseurs
  resources :zone_entrepot_activites
  resources :promotion_immobilieres
  resources :hors_zones
  resources :zone_activites
  resources :states
  resources :zone_industrielles


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'investisseurs#bord'
  get   'users/change_passd/:id', to: 'users#change_passd'
  get   'zone_activites/static/:id', to: 'zone_activites#static'
  get   'zone_industrielles/static/:id', to: 'zone_industrielles#static'
  get   'hors_zones/static/:id', to: 'hors_zones#static'
  get   'promotion_immobilieres/static/:id', to: 'promotion_immobilieres#static'


  # mailbox folder routes


  # conversations


  get 'stock-alerts', to: 'investisseurs#alert_stock'

end
