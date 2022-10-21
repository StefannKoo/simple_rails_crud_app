Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
   root "publishers#index"
   get '/books', to:'books#show_all_books',as:"show_all_books"
   get '/publishers', to:"publishers#index"
   get 'publishers/delete/:id',to:'publishers#delete',as:'delete'
   get '/publishers/show/:id',to:'publishers#show_one' , as:'show_one'
   get '/publishers/new', to:'publishers#new_publisher', as:'add_new'
   get '/publishers/:id/new-book',to:'books#add_new', as:'new_book'
   get 'publishers/:id/show/edit',to: 'publishers#edit',as:'edit_publisher'
   post 'publishers/new',to:'publishers#add_new_publisher',as:'add_new_publisher'
   post 'publishers/:id/new-book',to:'books#add_new_book',as:'add_new_book'
   get 'publishers/:id/books',to:'publishers#show_publishers_books',as:'publishers_books'
   get '/books/edit/:id',to:'books#edit_book',as:'edit_book'
   post '/books/edit/:id',to:'books#update_book',as:'update_book'

end
