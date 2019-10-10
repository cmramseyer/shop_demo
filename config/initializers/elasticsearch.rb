if Rails.env.test?
  Elasticsearch::Model.client = Elasticsearch::Client.new(host: 'localhost:9200', logger: Logger.new(STDOUT), log: true)
end