require 'rails_helper'

RSpec.describe "settlements/show", type: :view do
  before(:each) do
    @settlement = assign(:settlement, Settlement.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
