require "rails_helper"

describe 'Viewing related arists', :omniauth, :vcr, type: :feature do

  context 'when not authenticated' do
    it "requires me to be logged in" do
      visit artist_similar_artists_path('Tom Petty')
      expect(page).to have_text('You must be logged in to perform this action.')
      expect(current_path).to eql(root_path)
    end
  end


  context 'when authenticated' do
    before do
      signin
    end

    it "can view related artists" do
      visit '/'
      fill_in "Search for Artist", with: "Tom Petty"
      click_on "Search"

      expect(current_path).to eq('/artists/Tom%20Petty/similar_artists')
      expect(page).to have_content('Here are some similar artists to')
    end

    it "lets me like a similiar artist" do
      visit genres_path
      fill_in "Search for Artist", with: "Tom Petty"
      click_on "Search"

      expect(current_path).to eq('/artists/Tom%20Petty/similar_artists')

      click_on "Bruce Springsteen"

      click_on "Like Artist"

      expect(page).to have_text("We've added Bruce Springsteen to your likes.")
      expect(current_path).to eql('/account')
    end
  end

end
