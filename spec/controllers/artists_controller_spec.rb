require 'rails_helper'

describe ArtistsController do

  let(:user)   { User.create(uid: '1', name: 'Whitney', oauth_token: '1111') }
  let(:artist) { Artist.create!(name: "Tom Petty") }

  context "#index" do
    it "returns all the artists" do

    end
  end

  context "#show" do
    it "returns one specified artist" do
      artist = Artist.create!(name: 'Rolling Stones')

      get :show, id: artist.id, format: :json
      expect(response).to have_http_status(:ok)

      artist_response = JSON.parse(response.body)

      expect(artist_response['name']).to eq('Rolling Stones')
    end
  end
end

