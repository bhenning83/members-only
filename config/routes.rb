Rails.application.routes.draw do
  devise_for :users, controllers: {
        sessions: 'users/sessions'
      }

  resource :posts, only: [:index, :new, :create]

  root 'posts#index'
end
