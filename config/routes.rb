Rails.application.routes.draw do
  root to: 'pages#home'
  get 'about', to: 'pages#about', as: :about
  get 'gallery', to: 'pages#gallery', as: :gallery
  get 'contact', to: 'pages#contact', as: :contact
  resources "contacts", only: [:new, :create]


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
