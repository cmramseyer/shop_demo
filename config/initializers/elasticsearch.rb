if Rails.env.test?
  if ENV['CIRCLECI_ENV'] == 'circleci'
    port = 9250
  else
    port = 9200
  end
  Elasticsearch::Model.client = Elasticsearch::Client.new(host: "localhost:#{port}", logger: Logger.new(STDOUT), log: true)
end