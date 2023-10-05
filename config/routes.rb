Rails.application.routes.draw do
  resources :maintenances do
    member do
    get "preview"
  end

  collection do
    get 'search'
  end
  # Restringir el acceso a la eliminación de mantenimientos según el rol del usuario
  delete :destroy, to: 'maintenances#destroy', constraints: ->(req) { Ability.new(current_user).can?(:destroy, Maintenance) }
end
  resources :enginers do
    member do
    get "preview"
  end

  collection do
    get 'search'
  end

  # Restringir la eliminación de enginers solo a los administradores
  delete :destroy, to: 'enginers#destroy', constraints: ->(req) { Ability.new(current_user).can?(:destroy, Enginer) }
end



  devise_for :users, controllers:  {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }

  get 'terms/index'
  get 'footers/_index'
  get 'shareds/_index'
  get 'homes/index'
  # devise_scope :user do
  #   root to: "homes#index"
  # end
  root "homes#index"
end
