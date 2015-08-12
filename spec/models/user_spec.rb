require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) do
    user = User.create(name: "Whitney", uid: 1)
  end

  it 'is valid' do
    expect(user).to be_valid
  end

  it 'is not valid without a name' do
    user.name = nil
    expect(user).to_not be_valid
  end

  it 'is not valid without a uid' do
    user.uid = nil
    expect(user).to_not be_valid
  end
end
