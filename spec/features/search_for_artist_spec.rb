require "rails_helper"

describe 'Searching for an Artist', :omniauth, type: :feature do

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

      expect(current_path).to eq('/artists/Tom%20Petty')
      expect(page).to have_content('Tom Petty')
    end

    it "shows not found when an artist doesnt exist"
  end

  context 'when not authenticated' do
    it 'needs tests'
  end
end

