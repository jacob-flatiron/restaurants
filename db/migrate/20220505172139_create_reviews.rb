class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.integer :star_rating
      t.integer :restaurant_id
      t.integer :customer_id
    end
  end
end


# created a migration file that has the forin keys for the 
# star_rating, i put _id after the restaurant and customer
# bec they connect to each other by thier id 