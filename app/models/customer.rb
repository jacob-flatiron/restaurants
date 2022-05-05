class Customer < ActiveRecord::Base
    has_many :reviews
    has_many :restaurants, through: :reviews

    # a Customer can give many reviews on one or many restaurants

    def full_name
        # fullname = "#{first_name} + #{last_name}"
        Customer.select(:id, "CONCAT(first_name,' ',last_name) as name").find(1)
    end 

    def favorite_restaurant
        Customer.all.order('star_rating ASC').limit(1)
    end

    def add_review(restaurant, rating)
        Customer.create(restaurant_id: restaurant.id, rating: rating, Customer_id: self.id)
    end

    def delete_reviews(restaurant)
        Customer.reviews.destroy_all
    end

end

# Customer#delete_reviews(restaurant)
# takes a restaurant (an instance of the Restaurant class) and
# removes all their reviews for this restaurant
