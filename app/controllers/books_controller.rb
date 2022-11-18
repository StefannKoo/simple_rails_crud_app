class BooksController<ApplicationController

  before_action :set_book, only: [:edit,:update,:show]

  def index
    if params[:publisher_id]
      @books=Book.where(publisher_id:params[:publisher_id])
    else
      @books=Book.includes(:publisher).all
    end
  end

  def new
    @book=Book.new
  end

  def show 
    
  end

  def create
      @book=Book.new(book_params.merge(publisher_id:params[:publisher_id]))
      if @book.save && @book.valid?
        flash[:notice]="The book was sucessfully added to publisher"
        redirect_to publisher_books_path
      else
        flash[:notice]="Unsucess !! There is some errors"
        redirect_to new_publisher_book_path(params[:publisher_id])
      end
  end

  def edit   
  end

  def update
   if @book.update(book_params.merge(publisher_id:params[:publisher][:publisher_id]))
    flash[:notice]="The book was edited !"
      redirect_to books_path
   else
      flash[:notice]="There is some errors with update !"
      redirect_to edit_book_path(params[:id])
   end
  end

  def destroy
    @book=Book.find(params[:id])
    if @book.destroy
      flash[:notice]="Book was deleted !!"
    else
      flash[:notice]="There is some problems"
    end
    redirect_to books_path
  end

  private

  def book_params
    params.require(:book).permit(:name,:date,:ebook,:image)
  end

  def set_book
    @book=Book.find(params[:id])
  end
end