require 'rails_helper'

RSpec.describe User, type: :model do
  it { is_expected.to have_many(:likes) }

  let(:user) do
    user = User.create(name: "Whitney", uid: 1)
  end

  it 'requires a name' do
    is_expected.to validate_presence_of(:name)
  end

  it 'requires a uid that is also unique' do
    is_expected.to validate_presence_of(:uid)
    is_expected.to validate_uniqueness_of(:uid)
  end

  it 'can find a user from omniauth' do
    auth_hash = OmniAuth::AuthHash.new({
        'provider' => 'twitter',
        'uid' => '123545',
        'info' => {
          'name' => 'John Doe',
          'image' => 'mock_user_thumbnail_url'
        },
        'credentials' => {
          'token' => 'mock_token',
          'secret' => 'mock_secret'
        },
        'extra' => {
          'raw_info' => {
            'name' => 'John Doe'
          }
        }
      }.symbolize_keys)
    expect {
      User.from_omniauth(auth_hash)
    }.to change(User, :count).from(0).to(1)
  end
end
