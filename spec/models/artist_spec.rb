require 'rails_helper'

RSpec.describe Artist, :type => :model do

  let(:artist) do
    artist = Artist.create(name: "Whitney Houston")
  end

  it 'is valid' do
    expect(artist).to be_valid
  end

  it 'is not valid without a name' do
    artist.name = nil
    expect(artist).to_not be_valid
  end

end
