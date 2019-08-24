class Search < ApplicationRecord

  belongs_to :user

  MODELS_TO_SEARCH = [Product, Review]

  def self.with_keywords(keywords, opts = {})
    Elasticsearch::Model.search(keywords, MODELS_TO_SEARCH).records
  end
end
