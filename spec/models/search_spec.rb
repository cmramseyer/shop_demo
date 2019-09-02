require 'rails_helper'

RSpec.describe Search, type: :model do
  it 'test search' do
    records = Search.with_keywords('tv')
  end
end
