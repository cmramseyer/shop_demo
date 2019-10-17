require 'rails_helper'

RSpec.describe ProductComment, type: :model do
  it '#text_for_alert_check' do
    product_comment = ProductComment.new(text: 'testing')
    expect(product_comment.text_for_alert_check).to eq('testing')
  end
end
