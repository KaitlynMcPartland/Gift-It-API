Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:show, :create] do
    resources :gifts
  end

  get 'totals', to: 'gifts#totals'
end
