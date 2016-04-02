if Rails.env.production?
  Rails.configuration.stripe = {
    :publishable_key => ENV['STRIPE_PUBLISHABLE_KEY'],
    :secret_key => ENV['STRIPE_SECRET_KEY']
  }
else
  Rails.configuration.stripe = {
    :publishable_key => 'pk_test_hzaM4OSb2klo5vFrfnk8Yxo6',
    :secret_key => ' sk_test_Uggz7bSLZ0Sh8fSll55Cy1MQ'
  }
end

Stripe.api_key = Rails.configuration.stripe[:secret_key]