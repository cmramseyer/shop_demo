module SentryApi
  class Issue
    def initialize(response)
      @response = response
    end

    def error_type
      @response["metadata"]["type"]
    end

    def value
      @response["metadata"]["value"]
    end
  end
end