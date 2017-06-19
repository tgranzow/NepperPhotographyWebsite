Rails.application.routes.draw do

  get 'pages/about'

  get 'pages/client_testimonials'

  get 'pages/portfolio'

  get 'pages/client_viewing'

  get 'pages/pricing'

  get 'pages/contact_me'

  get 'pages/blog'

  root to: 'pages#home'
end
