class User < ApplicationRecord
    has_many :reservations
    has_many :planets, through: :reservations
    has_many :reviews
    has_many :notes

    has_secure_password
    has_many :visits, class_name: "Ahoy::Visit"


    # validates :username, presence: true, uniqueness: true
    

    def my_reviews
        self.reviews.select do |review|
            review.user.id = self.id  
        end 
    end 

    def my_first_review
        my_reviews.first
    end

    def my_last_review
        my_reviews.last
    end


    
end