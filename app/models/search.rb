class Search < ApplicationRecord

  belongs_to :user

  MODELS_TO_SEARCH = [Product, Review]

  def self.with_keywords(keywords, opts = {})
    Elasticsearch::Model.search(search_query(keywords), MODELS_TO_SEARCH).records
  end

  def self.search_query(keywords)
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
  def self.multi_match(keywords)
    {
      multi_match: {
        query: keywords,
        fields: %w[product_name^2 product_description category_name review_title^2 review_content^2 review_user review_product^2 review_product_category],
        fuzziness: 'auto'
      }
    }
  end
end
