class Restaurant < ActiveRecord::Base
    has_many :reviews
    has_many :customers, through: :reviews

    def Restaurant.fanciest #TC
        Restaurant.all.order('price DESC').first
    end

    def all_reviews #TC
        reviews.map do |r|
            r.full_review
        end
    end
end

#all_reviews # all_reviews is pulling all the reviews from full_reviews
