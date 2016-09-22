Rails.application.routes.draw do
  resources :books do
    member do
      put 'voteone', to: 'books#voteone'
      put 'votetwo', to: 'books#votetwo'
      put 'votethree', to: 'books#votethree'
      put 'votefour', to: 'books#votefour'
      put 'votefive', to: 'books#votefive'
      put 'unvote', to: 'books#unvote'
    end
  end
  devise_for :users
  root 'books#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
