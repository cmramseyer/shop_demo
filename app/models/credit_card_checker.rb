# connect to external API

module CreditCardChecker
  def self.connect(number:, code:)

    api_host = ENV['CREDIT_CARD_API_HOST']
    api_port = ENV['CREDIT_CARD_API_PORT']
    api_path = ENV['CREDIT_CARD_API_PATH']

    url = "http://#{api_host}:#{api_port}#{api_path}"

    query = { number: number, code: code }
    headers = {
        'Authorization'=>"Bearer #{ENV['CREDIT_CARD_APP_KEY']}",
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