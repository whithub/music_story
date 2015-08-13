require 'rails_helper'

describe Like do
  it { is_expected.to belong_to(:user) }

  it { is_expected.to validate_presence_of(:artist_name) }
  it { is_expected.to validate_presence_of(:found_through) }
end
