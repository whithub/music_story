require "rails_helper"

describe 'Browsing genres', :omniauth, :vcr, type: :feature do

  it "requires me to be logged in" do
    visit genres_path
    expect(page).to have_text('You must be logged in to perform this action.')
    expect(current_path).to eql(root_path)
  end

  context 'when logged in' do
    before do
      signin
    end

    it "can browse genres" do
      visit '/genres'
      click_on "Pop"

      expect(page).to have_content('Find artists that are SIMILAR to:')
      expect(page).to have_content('Michael Jackson')

      visit '/genres'
      click_on "Blues"

      expect(page).to have_content('Buddy Guy')

      visit '/genres'
      click_on "Country"

      expect(page).to have_content('Willie Nelson')
    end

    it 'can let me like an item through genre listings' do
      visit genres_path
      click_on 'Country'
      click_on 'Tim McGraw'

      click_on 'Like Artist'

      expect(page).to have_text("We've added Tim Mc Graw to your likes.")
      expect(current_path).to eql('/account')

      expect(page).to have_text("Tim McGraw (found through Country)")
    end

  end
end

