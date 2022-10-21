class PublishersController<ApplicationController
    def index     
        @publishers=Publisher.all  
    end
    def new_publisher
    end
    def add_new_publisher

        @publisher=Publisher.new(name:params[:name],
        adress:params[:adress])

        if @publisher.save 
            redirect_to root_path
        else
            redirect_to add_new_publisher_path
        end
    end
    def show_one
        @publisher=Publisher.find(params[:id])
    end

    def delete
     @publisher=Publisher.find(params[:id]) 
     @books=Book.where(publisher_id:params[:id])

     if @publisher.destroy && @books.destroy_all
        redirect_to root_path
     end
    end
    
    def show_publishers_books
        @books=Book.where(publisher_id:params[:id])
        @publisher=Publisher.find(params[:id])
    end

    def edit_publisher
    end

end
