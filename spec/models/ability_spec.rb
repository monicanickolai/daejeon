require 'rails_helper'
require "cancan/matchers"
require "spec_helper"

  context "admin attempts to delete user" do
  	before do
		@product = Product.create!
  		admin :delete, Product
  	end

  	it "should be able to delete product" do
		ability.should be_able_to(:destroy, Product)
	end 
end
end