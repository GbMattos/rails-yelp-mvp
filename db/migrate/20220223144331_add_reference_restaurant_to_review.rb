class AddReferenceRestaurantToReview < ActiveRecord::Migration[6.1]
  def change
    add_reference :reviews, :restaurant
  end
end
