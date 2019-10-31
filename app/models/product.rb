require 'elasticsearch/model'

class Product < ApplicationRecord
  belongs_to :category
  has_many :reviews
  has_many :product_comments
  has_many :ratings

  include Elasticsearch::Model
  # ES temporarily disabled for testing
  include Elasticsearch::Model::Callbacks

  index_name [Rails.env, 'products'].join('_')

  delegate :name, :icon_name, to: :category, prefix: true

  after_commit do
    __elasticsearch__.index_document
  end

  settings analysis: {
      filter: {
        autocomplete_filter: {
          type: "edge_ngram",
          min_gram: 1,
          max_gram: 20
        }
      },
      analyzer: {
        autocomplete: { 
          type: "custom",
          tokenizer: "standard",
          filter: ["lowercase","autocomplete_filter"]
        }
      }
    } do
    mapping dynamic: false do
      indexes :product_name, analyzer: 'english', type: :text
      indexes :product_description, analyzer: 'english', type: :text
      indexes :category_name, type: :keyword
      indexes :brand, type: :keyword
      indexes :type, type: :keyword
      indexes :test, type: :text, analyzer: "autocomplete", search_analyzer: "standard"
    end
  end

  def as_indexed_json(options={})
    {
      product_name: name,
      product_description: description,
      category_name: category.try(:name),
      brand: brand,
      test: name,
      type: index_type
    }
  end

  def description_overview
    description.truncate_words(20)
  end

  def index_type
    "Product"
  end

  def average_rating
    return 0 if ratings.empty?
    ratings.sum(&:rating) / ratings.length.to_f
  end
end
