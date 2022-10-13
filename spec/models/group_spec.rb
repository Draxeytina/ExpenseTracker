require 'rails_helper'

RSpec.describe Group, type: :model do
  it 'is an invalid creation' do
    group = Group.new(name: 'tina')
    expect(group).to_not be_valid
  end

  it 'is an invalid creation including name' do
    group = Group.new(name: 'tina', icon: 'brown')
    expect(group).to_not be_valid
  end

  it 'is valid with a name, icon, and user' do
    user = User.create(name: 'tina', email: 'tina@new.com', password: 'tinashe')
    group = Group.new(name: 'tina', icon: 'brown', user:)
    expect(group).to be_valid
  end
end
