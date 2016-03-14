require 'rails_helper'

describe User do
  context "no first name present" do
    before { @user = User.new() }

    it "should return nothing" do
      expect(@user.first_name).to eq nil
  	end
  end
end