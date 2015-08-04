require 'rails_helper'

describe ArtistsController do
  context "#index" do
    it "returns all the artists" do
      Artist.create!(name: 'Tom Petty')

      get :index, format: :json
      expect(response).to have_http_status(:ok)

      artists = JSON.parse(response.body)
      expect(artists.count).to eq(1)

      artist = artists['artists'].first
      expect(artist['name']).to eq('Tom Petty')
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

