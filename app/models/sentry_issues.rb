require "httparty"
require "json"

module SentryIssues

  LIST_URL= "https://sentry.io/api/0/projects/#{ENV['SENTRY_ORGANIZATION']}/#{ENV['SENTRY_PROJECT']}/issues/"


  def self.get
    headers = header(ENV['SENTRY_TOKEN'])
    begin
      response = HTTParty.get(LIST_URL, headers: headers)
      body = JSON.parse(response.body)
    rescue Errno::ECONNREFUSED
      body = { message: 'error connecting, API server seems down' }
    end
  end

  def self.header(token)
    {
      'Authorization'=>"Bearer #{token}",
      'Content-Type' =>'application/json',
      'Accept'=>'application/json'
    }
  end

end