class SearchQueryApi

  MODELS_TO_SEARCH = [Product]

  attr_reader :response, :records, :elastic

  def initialize(keywords, opts = {})
    @elastic = Elasticsearch::Model.search(search_query(keywords, opts), 
      MODELS_TO_SEARCH)
    @response = @elastic.response
    @records = @elastic.records
  end

  def query(keywords, opts)
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
        fields: %w[product_name^2 product_description brand category_name],
        fuzziness: 'auto'
      }
    }
  end

end