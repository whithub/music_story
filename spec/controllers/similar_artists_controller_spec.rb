require 'rails_helper'

RSpec.describe SimilarArtistsController, type: :controller do
  context '#index' do
    it 'returns all customers' do
      customer    = create(:customer, first_name: 'Tom', last_name: 'Petty')

      get :index, format: :json
      expect(response).to have_http_status(:ok)

      customers = JSON.parse(response.body)
      expect(customers.count).to eq(1)

      customer = customers['customers'].first
      expect(customer['first_name']).to eq('Tom')
    end
  end

end

