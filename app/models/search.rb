class Search < ApplicationRecord

  belongs_to :user


end

=begin
GET _search
{
      "query": {
        "function_score": { 
          "query": {
            "bool": {
              "must": [{
      "multi_match": {
        "query": "tv",
        "fields": ["product_name^2", "product_description", "category_name", "review_title^2", "review_content^2", "review_user", "review_product^2", "review_product_category"],
        "fuzziness": "auto"
      }
    }]
            }
          }
        }
      },
      "aggs": {
        "categories": {
            "terms": { "field": "category_name" } 
        }
      }
    }
=end
