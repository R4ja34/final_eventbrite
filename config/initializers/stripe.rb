Rails.configuration.stripe = {
  :publishable_key => ENV['PUBLISHABLE_KEY'],
  :secret_key => ENV['SECRET_KEY']
}

puts "Stripe Config: #{Rails.configuration.stripe.inspect}"

Stripe.api_key = Rails.configuration.stripe[:secret_key]