class ProductComment < ApplicationRecord
  belongs_to :product
  belongs_to :user

  include AlertCheckeable

  include Elasticsearch::Model
  # ES temporarily disabled for testing
  include Elasticsearch::Model::Callbacks unless $skip_elasticsearch_callbacks

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
          synonyms: []
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
      indexes :comment_product_name, type: :keyword
      indexes :comment_user, type: :keyword
      indexes :comment_text, analyzer: 'custom_english', type: :text
    end
  end

  def as_indexed_json(options={})
    {
      comment_product_name: product.name,
      comment_user: user.email,
      comment_text: text
    }

  end

  def text_for_alert_check
    text
  end

end
