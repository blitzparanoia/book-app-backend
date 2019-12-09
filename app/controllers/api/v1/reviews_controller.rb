class Api::V1::ReviewsController < ApplicationController
    before_action :set_book

    def index
        @reviews = @book.reviews
        render json: @reviews
    end

    def new
        @review = @book.reviews.build
    end

    def create
        @review = @book.reviews.build
        if @review.update(review_params)
            render json: @review
        else
            render json: {error: 'Error creating review'}
    end
end

    def show
        @review = Review.find(params[:id])
        render json: @review
    end

    # def destroy
    # end

    private

    def set_book
        @book = Book.find(params[:book_id])
    end

    def review_params
        params.require(:review).permit(:comment, :book_id)
    end
end
