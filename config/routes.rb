Rails.application.routes.draw do

  resources :publishers do
    resources :books
  end

  resources :books

  root "publishers#index"
  

end
