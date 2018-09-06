Rails.application.routes.draw do
  devise_for :users
  root 'welcome#index'
  get 'welcome/example', to: 'welcome#example'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :apis do
    scope :v1 do
      mount_devise_token_auth_for 'User', at: 'auth'
    end
  end
end
