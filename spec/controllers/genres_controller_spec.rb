require 'rails_helper'

RSpec.describe GenresController, type: :controller do
  context "#show" do
    it "returns one specified genre" do
      genre = Genre.create!(title: "Rock'n'Roll")

      get :show, id: genre.id, format: :json
      expect(response).to have_http_status(:ok)

      genre_response = JSON.parse(response.body)

      expect(genre_response['title']).to eq("Rock'n'Roll")
    end
  end
end
