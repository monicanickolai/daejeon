require 'rails_helper'

describe Product do

	context "Product has no name" do
		before do
		@product = FactoryGirl.build(:product, name: "Huffy", description: "Nice bike")
	end

	it "is valid" do
		expect(@product).to be_valid
	end

	it "is invalid" do
		expect(Product.new(description: "Nice bike")).not_to be_valid

	end
end
end