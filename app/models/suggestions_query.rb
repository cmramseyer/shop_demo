class SuggestionsQuery

  MODELS_TO_SEARCH = [Product, Review]

  attr_reader :response, :records, :elastic

  def initialize(keywords)
    @elastic = Elasticsearch::Model.search(search_query(keywords), 
      MODELS_TO_SEARCH)
    @response = @elastic.response
    @records = @elastic.records
  end

  def query(keywords)
    {
      query: {
        function_score: { 
          query: {
            bool: {
              must: [multi_match(keywords)]
            }
          }
        }
      }
      
    }
  end

  def search_query(keywords, opts={})
    
    {
      size: 5,
      query: {
        function_score: { 
          query: {
            bool: {
              must: [multi_match(keywords)]
            }

          }
        }
      }
    }
  end
  def multi_match(keywords)
    {
      multi_match: {
        query: keywords,
        fields: %w[test],
        fuzziness: 'auto'
      }
    }
  end

end