require 'rails_helper'

describe Product do

	context "Product has no name" do
		before do
		@product = Product.new(description: "Nice bike")
	end

	it "is valid" do
		expect(Product.new(name: "Huffy", description: "Nice bike")).to be_valid
	end

	it "is invalid" do
		expect(Product.new(description: "Nice bike")).not_to be_valid

	end
end
end