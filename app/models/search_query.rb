class SearchQuery

  MODELS_TO_SEARCH = [Product, Review, Comment]

  attr_reader :response, :records, :elastic, :aggregations

  def initialize(keywords)
    @elastic = Elasticsearch::Model.search(search_query(keywords), MODELS_TO_SEARCH)
    @response = @elastic.response
    @aggregations = @elastic.aggregations
    @records = @elastic.records
  end

  def search_query(keywords)
    {
      query: {
        function_score: { 
          query: {
            bool: {
              must: [multi_match(keywords)]
            }
          }
        }
      },
      aggs: {
        categories: {
            terms: { field: "category_name" } 
        }
      }
    }
  end
  def multi_match(keywords)
    {
      multi_match: {
        query: keywords,
        fields: %w[product_name^2 product_description category_name review_title^2 review_content^2 review_user review_product^2 review_product_category, comment_user, comment_product_name, comment_text],
        fuzziness: 'auto'
      }
    }
  end

end