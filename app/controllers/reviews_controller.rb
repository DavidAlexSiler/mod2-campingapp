class ReviewsController < ApplicationController
    before_action :authenticate!, except: [:index, :show]

    def index 
        @reviews = Review.all
    end 

    def show 
        @review = Review.find(params[:id])
    end 

    def new
        @review = Review.new
    end 

    def create 
        @review = Review.new(review_params)
        @review.user_id = current_user.id
        if @review.save 
            redirect_to review_path(@review.id)
        else 
            render :new
        end 
    end 

    def edit 
        @review = Review.find(params[:id])
        render :edit 
    end 
    
      def update
        @reivew = Review.find(params[:id])
        @review.update(review_params)
        redirect_to review_path(@review.id)
      end
    
      def destroy
        @review = Review.find(params[:id])
        if @review.user == current_user
          @review.destroy
        else
          flash[:info] = "You can only delete your own reviews"
        end
        redirect_to reviews_path
      end



    private

    def review_params
        params.require(:review).permit(:user_id, :planet_id, :img_url, :rating, :title, :planet_review)
    end 
end
