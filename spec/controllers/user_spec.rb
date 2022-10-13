require 'rails_helper'
require 'spec_helper'

RSpec.describe User, type: :request do
  before(:each) do
    @user = User.create(name: 'tina', email: 'tina@tina.com', password: 'tinashe')
  end
  describe 'GET /users' do
    it 'returns http success' do
      get '/users'
      expect(response).to have_http_status(:success)
    end
  end
end
