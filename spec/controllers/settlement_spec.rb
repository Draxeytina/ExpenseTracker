require 'rails_helper'
require 'spec_helper'

RSpec.describe User, type: :request do
  before(:each) do
    @user = User.create(name: 'tina', email: 'tina@test.com', password: 'tinashe')
    @group = Group.create(name: 'tina', icon: 'tina', user: @user)
    @settlement = Settlement.create(name: 'tina', amount: 2, group: @group, user: @user)
  end

  describe 'GET /settlements' do
    before { get group_path(@group) }

    it 'returns a 200 status code' do
      expect(response).to have_http_status(200)
    end

    it 'renders the index template' do
      expect(response).to render_template('show')
    end

    it 'should render the correct text' do
      expect(response.body).to include('tina')
    end
  end
end
