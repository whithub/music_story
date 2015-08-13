require "rails_helper"

describe 'Searching for an Artist', :omniauth, :vcr, type: :feature do

  context 'when authenticated' do
    before do
      signin
    end

    it 'can search when on the main page' do
      visit root_path
      expect(page).to have_field("Search for Artist")
    end

    it "can search for artist by name" do
      visit genres_path
      fill_in "Search for Artist", with: "Tom Petty"
      click_on "Search"

      expect(current_path).to eq('/artists/Tom%20Petty/similar_artists')
      expect(page).to have_content('Tom Petty')
    end


    it "shows not found when an artist doesnt exist" do
      visit genres_path
      fill_in "Search for Artist", with: '78783h2jiy7cxd8907dshjkflas7837uy289hjiod'
      click_on "Search"

      expect(page).to have_text("There is no artist by that name. Please try again.")
    end
  end

  context 'when not authenticated' do
    it "requires me to be logged in" do
      visit artist_path('Tom Petty')
      expect(page).to have_text('You must be logged in to perform this action.')
      expect(current_path).to eql(root_path)
    end
  end
end

