require 'rails_helper'

RSpec.describe Settlement, type: :model do
  it 'is an invalid creation' do
    settlement = Settlement.new(name: nil)
    settlement.valid?
    expect(settlement.errors[:name]).to include("can't be blank")
  end

  it 'is a valid creation' do
    user1 = User.create(name: 'tina', email: 'tina@new.com', password: 'tinashe')
    group = Group.create(name: 'tina', icon: 'brown', user: user1)
    settlement = Settlement.new(name: 'tina', amount: 2, group:, user: user1)
    expect(settlement).to be_valid
  end
end
