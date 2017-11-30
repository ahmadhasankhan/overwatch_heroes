Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api, defaults: {format: 'json'} do
    # wrap inside namespace :v1 if you want versionning
    resources :heros, only: [:index, :show] do
      resources :abilities, only: [:index, :show], shallow: true
    end

    resources :abilities, only: [:index, :show]
  end
end
