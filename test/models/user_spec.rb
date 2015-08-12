require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { User.create(uid: '80238', name: 'Whitney', oatuh_token: '1111') }

  before(:each) do
    user
  end

  it 'is valid' do
    expect(user).to be_valid
  end

  it 'is invalid without a uid' do
    user.uid = nil
    expect(user).to_not be_valid
  end

  it 'can find by uid' do
    u = User.find_or_create_from_oauth(stub_omniauth_user)

    expect(u.uid).to eq(user.uid)
    expect(u.name).to eq(user.name)
    expect(u.oauth_token).to eq(user.oauth_token)
  end

  it 'can create a user' do
    u = User.find_or_create_from_oauth(stub_omniauth_new_user)

    expect(u.uid).to eq('80238')
    expect(u.name).to eq('Whitney')
    expect(u.oauth_token).to eq('1111')
    expect(u.uid).to_not eq(user.uid)
  end
end
