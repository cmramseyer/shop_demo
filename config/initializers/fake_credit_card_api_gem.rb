FakeCreditCardApiGem.configure do |config|
  config.api_key = ENV['CREDIT_CARD_APP_KEY']
  config.host = ENV['CREDIT_CARD_API_HOST']
  config.port = ENV['CREDIT_CARD_API_PORT']
end