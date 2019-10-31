class SearchQuery

  MODELS_TO_SEARCH = [Product, Review, ProductComment]

  attr_reader :response, :records, :elastic, :aggregations

  def initialize(keywords, opts = {})
    @elastic = Elasticsearch::Model.search(search_query(keywords, opts), 
      MODELS_TO_SEARCH)
    @response = @elastic.response
    @aggregations = @elastic.aggregations
    @records = @elastic.records
  end

  def query(keywords, opts)
    category_name = opts.fetch(:category_name, "")
    brand = opts.fetch(:brand, "*")
    type = opts.fetch(:type, "*")
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

  def aggs
    {
        categories: {
            terms: { field: "category_name" } 
        },
        brands: {
            terms: { field: "brand" } 
        },
        types: {
            terms: { field: "type" } 
        }
      }
    
  end

  def filters
    { 
        bool: { 
          must: { 
            filter: { 
              terms: { brand: "LG" }
            }
         }
        }
      }
  end

  def lala(opts)
    return {} unless opts[:category_name] || opts[:brand] || opts[:type]
    
    filter = { filter: [] }
    opts.keys.each do |key|
      next unless opts[key]
      filter[:filter] << { term: { key => opts[key] } }
    end
    filter
  end

  def search_query(keywords, opts={})
    
    {
      query: {
        function_score: { 
          query: {
            bool: {
              must: [multi_match(keywords)],
              **lala(opts)
            }

          }
        }
      },
      aggs: {
        categories: {
            terms: { field: "category_name" } 
        },
        brands: {
            terms: { field: "brand" } 
        },
        types: {
            terms: { field: "type" } 
        }
      }
    }
  end
  def multi_match(keywords)
    {
      multi_match: {
        query: keywords,
        fields: %w[product_name^2 product_description brand category_name review_title^2 review_content^2 review_user review_product^2 review_product_category comment_user comment_product_name comment_text],
        fuzziness: 'auto'
      }
    }
  end

end