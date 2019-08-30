# connect to external API

module FakeCreditCardApi

  API_KEY = ENV['CREDIT_CARD_APP_KEY']
  HOST = ENV['CREDIT_CARD_API_HOST']
  PORT = ENV['CREDIT_CARD_API_PORT']
  CHECK_PATH = '/check_credit_card'
  CREDIT_CARDS_PATH = '/credit_cards'
  
  def self.checker(number:, code:)
    api_path = CHECK_PATH
    url = "http://#{HOST}:#{PORT}#{api_path}"
    query = { number: number, code: code }
    headers = {
        'Authorization'=>"Bearer #{API_KEY}",
        'Content-Type' =>'application/json',
        'Accept'=>'application/json'
    }
    begin
      response = HTTParty.get(url, query: query, headers: headers)
      body = JSON.parse(response.body)
    rescue Errno::ECONNREFUSED
      body = { message: 'error connecting, API server seems down' }
    end
  end

  def self.index
    api_path = CREDIT_CARDS_PATH
    url = "http://#{HOST}:#{PORT}#{api_path}"
    query = {}
    headers = {
        'Authorization'=>"Bearer #{API_KEY}",
        'Content-Type' =>'application/json',
        'Accept'=>'application/json'
    }
    begin
      response = HTTParty.get(url, query: query, headers: headers)
      body = JSON.parse(response.body)
    rescue Errno::ECONNREFUSED
      body = { message: 'error connecting, API server seems down' }
    end
  end
end