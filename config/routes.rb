Rails.application.routes.draw do
  resources :restaurants, except: [:update, :destroy, :edit] do
    resources :reviews, except: [:update, :destroy, :edit]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
