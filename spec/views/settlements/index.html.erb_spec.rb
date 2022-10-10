require 'rails_helper'

RSpec.describe "settlements/index", type: :view do
  before(:each) do
    assign(:settlements, [
      Settlement.create!(),
      Settlement.create!()
    ])
  end

  it "renders a list of settlements" do
    render
  end
end
