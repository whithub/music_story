require 'rails_helper'

RSpec.describe User, type: :model do
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
end
