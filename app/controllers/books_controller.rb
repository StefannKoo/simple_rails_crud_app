class BooksController<ApplicationController
  def show_all_books
    @books=Book.includes(:publisher).all
  end

  def add_new
    @book=Book.new
  end

  def publisher_books    
  end

  def add_new_book

     @eb
      if params[:HaveEbook]=='1'
        @eb=true
      else
        @eb=false
      end

      @book=Book.new(name:params[:name],date:params[:date],ebook:@eb,publisher_id:params[:id])
      if @book.save
        redirect_to publishers_books_path
      else
        redirect_to add_new_book_path
      end
  end

  def edit_book
    
    @book=Book.find(params[:id])
   # puts @book.date
  end

  def update_book

    @book=Book.find(params[:id])

    @book.name=params[:book][:name]
    @book.date=params[:book][:date]
    @book.ebook=params[:book][:ebook]
    if @book.save
      redirect_to show_all_books_path
    else
      redirect_to edit_book_path(params[:id])
    end
  end
end