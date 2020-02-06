class Api::V1::ReviewsController < ApplicationController
    def index 
        @reviews = Review.all 
        render json: @reviews, include: :user
        #books to a relationship in ur database, can call all the books related to a user
    end

    def create
        @new = Review.create(review_params)
        puts @new
    end

    private

    def review_params
        params.permit(:user_id, :beach_id, :text, :date)
    end
end
