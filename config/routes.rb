Rails.application.routes.draw do

  resources :blogs
  resources :photo_uploads
  resources :testimonials
  

  get 'pages/about'

  get 'pages/client_testimonials'

  get 'pages/portfolio'

  get 'pages/wedding'

  get 'pages/engagement'

  get 'pages/family'

  get 'pages/product_photography'

  get 'pages/scenic_photography'

  get 'pages/client_viewing'

  get 'pages/pricing'

  get 'pages/contact_me'

  get 'pages/blog'

  root to: 'pages#home'
end
