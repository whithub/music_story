require 'rails_helper'

RSpec.describe Genre, type: :model do
  it "can access genres" do
    disco = Genre.create(name: "Disco")
    expect(disco.artists).to eq([])
  end

  xit "can get artists from a genre" do
    rock = Genre.create(name: "Rock")
    rock.artists.create(name: "Foo Fighters")

    foo = Genre.rock
    expect(foo.songs.first.name).to eq("The Best Of You")
  end
end


