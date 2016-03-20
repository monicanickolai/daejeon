require 'rails_helper'

describe Comment do
context "when the product has comments" do
	before do
		@product = FactoryGirl.create(:product)
		@user = FactoryGirl.build(:user)
		@product.comments.create!(rating: 1, user: @user, body: "Awful!")
		@product.comments.create!(rating: 3, user: @user, body: "OK")
		@product.comments.create!(rating: 5, user: @user, body: "Great!")
	end
	
	it "returns the average rating of all comments" do
		expect(@product.average_rating).to eq 3.0
	end



end
end