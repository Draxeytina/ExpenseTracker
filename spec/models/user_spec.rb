require 'rails_helper'

RSpec.describe User, type: :model do
  it 'is an invalid creation' do
    user = User.new(name: nil)
    user.valid?
    expect(user.errors[:name]).to include("can't be blank")
  end

  it 'is a valid creation' do
    user = User.new(name: 'tina', email: 'tina@new.com', password: 'tinashe')
    expect(user).to be_valid
  end
end
