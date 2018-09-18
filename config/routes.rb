Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations' }
  root 'welcome#index'
  get 'welcome/example', to: 'welcome#example'
  get 'chat', to: 'chat#index'
  post 'chat/commit', to: 'chat#commit'
  mount ActionCable.server => '/cable'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :apis do
    scope :v1 do
      get 'posts', to: 'posts#index'
      post 'posts/commit', to: 'posts#commit'
      mount_devise_token_auth_for 'User', at: 'auth'
    end
  end
end
