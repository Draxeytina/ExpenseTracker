require 'rails_helper'
require 'spec_helper'

RSpec.describe User, type: :request do
  describe 'GET /index' do
    before { get groups_path }

    it 'returns a 200 status code' do
      expect(response).to have_http_status(200)
    end

    it 'renders the index template' do
      expect(response).to render_template('index')
    end

    it 'should render the correct text' do
      expect(response.body).to include('sign')
    end
  end
end
