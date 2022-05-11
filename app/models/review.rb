class Review < ActiveRecord::Base
    belongs_to :customer
    belongs_to :restaurant

    def full_review #TC
        "Review for #{restaurant.name} by #{customer.full_name}: #{star_rating} stars."
    end
end

#full_review # added "full_" to customer.name