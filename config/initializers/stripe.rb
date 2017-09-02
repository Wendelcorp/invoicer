Rails.configuration.stripe = {
  :publishable_key => 'pk_test_GlrXIGEQRSzEhS7vnCWJlLd8',
  :secret_key => 'sk_test_kCVG3b2SkQAgUp6pA9YRiZIg'
}
Stripe.api_key = Rails.configuration.stripe[:secret_key]
