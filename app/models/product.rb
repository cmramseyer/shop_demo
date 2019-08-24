require 'elasticsearch/model'

class Product < ApplicationRecord
  belongs_to :category

  include Elasticsearch::Model
  # ES temporarily disabled for testing
  include Elasticsearch::Model::Callbacks

  after_commit do
    __elasticsearch__.index_document
  end

  settings analysis: {
      filter: {
        english_stop: {
          type: "stop",
          stopwords: "_english_" 
        },
        english_keywords: {
          type: "keyword_marker",
          keywords: [] 
        },
        english_stemmer: {
          type: "stemmer",
          language: "english"
        },
        english_possessive_stemmer: {
          type: "stemmer",
          language: "possessive_english"
        },
        my_synonyms: {
          type: "synonym",
          synonyms_path: "shop_synonyms.txt"
        }
      },
      analyzer: {
        custom_english: {
          tokenizer: "standard",
          filter: [
            "english_possessive_stemmer",
            "lowercase",
            "my_synonyms",
            "english_stop",
            "english_keywords",
            "english_stemmer"
          ]
        }
      }
    }, index: { number_of_shards: 1 } do
    mapping dynamic: false do
      indexes :product_name, analyzer: 'custom_english', type: :text
      indexes :product_description, analyzer: 'custom_english', type: :text
      indexes :category do
        indexes :name, analyzer: 'custom_english', type: :text
      end
    end
  end

  def as_indexed_json(options={})
    {
      product_name: name,
      product_description: description,
      category_name: category.try(:name)
    }

  end
end
