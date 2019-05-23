Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 root to: 'cocktails#index'
  resources :cocktails, only: [:index, :show, :new, :create, :update, :edit, :destroy] do
    resources :doses, only: [:new, :create, :update, :edit]
  end
  resources :doses, only: :destroy
end