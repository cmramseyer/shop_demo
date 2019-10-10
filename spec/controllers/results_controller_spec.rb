require 'rails_helper'

RSpec.describe ResultsController, type: :controller, elasticsearch: true do

  it 'GET results returns 200' do
    user = users(:basic_user)
    sign_in(user)
    search = searches(:search_tv)
    get :index, params: { search_id: search.id }
    expect(response.status).to eq(200)
  end
end
