Rails.application.routes.draw do
  get 'home/index'

  resources :publishers do
    resources :books
  end

  resources :books
  resources :platforms
  resources :territories

  root "home#index"
  

end
