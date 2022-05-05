class Restaurant < ActiveRecord::Base
    has_many :reviews
    has_many :customers, through: :reviews

    # since a Restaurant can get more customers ith more reviews

    def fanciest
        Restaurant.all.order(:price).first
    end

    def all_reviews 
        all = [
            "Review for #{restaurant.name} by #{customer.name}: #{star_rating} stars."
            "Review for #{restaurant.name} by #{customer.name}: #{star_rating} stars."
        ]
    end
end

# all gives an arry of all the reviews of a restaurant

