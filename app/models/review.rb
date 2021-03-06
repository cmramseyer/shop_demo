require 'elasticsearch/model'

class Review < ApplicationRecord
  belongs_to :user
  belongs_to :product

  include AlertCheckeable

  include Elasticsearch::Model
  # ES temporarily disabled for testing
  include Elasticsearch::Model::Callbacks
  index_name [Rails.env, 'reviews'].join('_')

  delegate :name, :category_name, to: :product, prefix: true

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
      indexes :review_title, analyzer: 'custom_english', type: :text
      indexes :review_content, analyzer: 'custom_english', type: :text
      indexes :review_user, analyzer: 'custom_english', type: :text
      indexes :review_product, analyzer: 'custom_english', type: :text
      indexes :review_product_category, analyzer: 'custom_english', type: :text
      indexes :type, type: :keyword
    end
  end

  def as_indexed_json(options={})
    {
      review_title: title,
      review_content: content,
      review_user: user.try(:email),
      review_product: product.try(:name),
      review_product_category: product.try(:category).try(:name),
      type: index_type
    }
  end

  def content_overview
    content.truncate_words(20)
  end

  def text_for_alert_check
    content
  end

  def index_type
    "Review"
  end
end
