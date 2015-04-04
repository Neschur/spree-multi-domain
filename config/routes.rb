Spree::Core::Engine.routes.append do
  namespace :admin do
    resources :stores

    resources :products do
      member do
        get :stores
      end
    end
  end
end
