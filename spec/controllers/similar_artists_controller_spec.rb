require 'rails_helper'

RSpec.describe SimilarArtistsController, type: :controller do
  context '#index' do
    it 'returns all similar artists' do
      customer    = create(:customer, first_name: 'Tom', last_name: 'Petty')

      get :index, format: :json
      expect(response).to have_http_status(:ok)

      related_artists = JSON.parse(response.body)
      expect(related_artists.count).to eq(1)

      customer = related_artists['related_artists'].first
      expect(customer['first_name']).to eq('Tom')
    end
  end

end

