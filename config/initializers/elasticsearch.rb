if Rails.env.test?
  Elasticsearch::Model.client = Elasticsearch::Client.new(host: 'localhost:9250', logger: Logger.new(STDOUT), log: true)
end