require 'rails_helper'

RSpec.describe HomeController, type: :controller do

  it 'GET index returns 200' do
    user = users(:basic_user)
    sign_in(user)
    get :index
    expect(response.status).to eq(200)
  end
end
