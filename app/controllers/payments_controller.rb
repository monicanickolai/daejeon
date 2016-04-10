class PaymentsController < ApplicationController

def create
	token = params[:stripeToken]
	@product = Product.find(params[:product_id])
	@user = current_user
	# Create the charge on Stripe's servers -this will charge the user's card
	begin
		charge = Stripe::Charge.create(
			:amount => (@product.price*100).to_i, 
			:currency => "usd",
			:source => token,
			:description => params[:stripeEmail]
		)

		if charge.paid
			Order.create(
				product_id: @product,
				user_id: @user,
				total: @product.price
				)
		flash[:notice] = "Thank you for your purchase!"	
		end

	rescue Stripe::CardError => e
		# declined card
		body = e.json_body
		err = body[:error]
		flash[:error] = "Unfortunately, there was an error processing your payment: #{error[:message]}"
	end
	redirect_to product_path(@product)
end
end
