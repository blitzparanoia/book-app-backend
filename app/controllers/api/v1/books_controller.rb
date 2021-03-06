class Api::V1::BooksController < ApplicationController

    def index
        @books = Book.all
        render json: @books
    end

    def create
        @book = Book.new(book_params)
        if @book.save
            render json: @book
        else
            render json: {error: 'Error creating book'}
        end
    end

    def show
        @book = Book.find(params[:id])
        render json: @book
    end

    def update
      @book = Book.find(params[:id])
      @book.update(title: params["book"]["title"], author: params["book"]["author"], description: params["book"]["description"])
      @book.save
      render json: @book
    end

    def destroy
        @book = Book.find(params[:id])
        @book.destroy
    end

    private

    def book_params
        params.require(:book).permit(:title, :author, :description)
    end
end
