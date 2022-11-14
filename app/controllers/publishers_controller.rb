class PublishersController<ApplicationController

    before_action :set_publisher,  only: [:show,:destroy,:edit]

    def index     
        @publishers=Publisher.all  
    end  

    def new
        @publisher=Publisher.new
        @publisher.books.build
    end

    def create
         puts "Parametri: #{params}"
        @publisher=Publisher.new(publisher_params)

        if @publisher.save
            flash[:notice]='Publishes is sucessfull added !'
            redirect_to root_path
        else
            render :new,status: :unprocessable_entity
        end      
  
    end

    def show     
    end

    def destroy

      @books=Book.where(publisher_id:params[:id])

     if @publisher.destroy && @books.destroy_all
        flash[:notice]="Publisher #{@publisher.name} was deleted sucessfully !"
        redirect_to root_path
     end
    end

    def edit
    end

    private 

    def publisher_params
        params.require(:publisher).permit(:name,:adress, books_attributes:[:name,:date,:ebook,:image])
    end

    def set_publisher
        @publisher=Publisher.find(params[:id])
    end

end
