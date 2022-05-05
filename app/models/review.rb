class Review < ActiveRecord::Base
    belongs_to :customer
    belongs_to :restaurant

    def full_review
        "Review for #{restaurant.name} by #{customer.name}: #{star_rating} stars."
    end
end