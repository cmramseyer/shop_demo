require 'rails_helper'

RSpec.describe Search, type: :model do
  it 'test search' do
    search_query = SearchQuery.new('apple', {})
    elastic_records = search_query.records
    categories = search_query.aggregations.categories.buckets
    brands = search_query.aggregations.brands.buckets
    records = elastic_records.map { |r| Searchable.create(r) }

    expect(records.any?).to be true
  end
end
