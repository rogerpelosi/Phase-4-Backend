class BooksController < ApplicationController

    rescue_from ActiveRecord::RecordNotFound, with: :not_found

    skip_before_action :authorize, only: [:index, :show]

    def index 
        render json: Book.all
    end 

    def show 
        @book = Book.find(params[:id])
        render json: @book, 
        status: :ok
    end

    def create 
        @new_book = Book.create!(book_params)
        render json: @new_book,
        status: :created
    end 

    def destroy 
        @book = Book.find(params[:id])
        @book.destroy 
        head :no_content
    end 

    private 

    def book_params 
        params.permit(:title, :image_url, :isbn, :description, :publisher, :price, :user_id)
    end 

    def not_found
        render json: {error: "Book Is Not In The Database!"},
        status: :not_found 
    end

end
