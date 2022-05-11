class Customer < ActiveRecord::Base
    has_many :reviews
    has_many :restaurants, through: :reviews

    def full_name #TC
        "#{first_name} #{last_name}"        
    end 

    def favorite_restaurant #TC
        reviews.order('star_rating DESC').first
        end

    def add_review(restaurant, star_rating) #TC
        Review.create(restaurant_id: restaurant.id, star_rating: star_rating, customer_id: self.id)
    end

    
    def delete_reviews(restaurant)
        restaurant.reviews.destroy_all
    end
end
# Customer#delete_reviews(restaurant)
# takes a restaurant (an instance of the Restaurant class) and
# removes all their reviews for this restaurant
# you will have to delete rows from the reviews table to get this to work!

#full_name # cut "the full_name = " and "+"  

#favorite_restaurant # we are taking the "reviews" and ordingering them from high to low and "Customer" to "reviews"

#add_review # changed customer from upper case "C" to lower case "c"