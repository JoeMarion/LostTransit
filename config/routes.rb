Rails.application.routes.draw do
  get 'static/index'

  root 'static#index'

  get 'help'    => 'static#help'
  get 'about'   => 'static#about'
  get 'contact' => 'static#contact'
  get 'signup'  => 'users#new'
  resources :users

  resources :profile
  resources :tutorials

  resources :blogs do
    resources :blog_posts
  end

  resources :forums, only: [:index] do
    resources :posts do
      resources :comments
    end
  end
end
