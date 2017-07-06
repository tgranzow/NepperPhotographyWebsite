Rails.application.routes.draw do

  devise_for :admins
  resources :blogs
  resources :photo_uploads do
      resources :images, :only => [:create, :destroy]
  end
  resources :testimonials


  get 'pages/about'

  get 'pages/client_testimonials'

  get 'pages/portfolio'

  get 'pages/client_viewing'

  get 'pages/pricing'

  get 'pages/contact_me'

  get 'pages/blog'

  root to: 'pages#home'
end
