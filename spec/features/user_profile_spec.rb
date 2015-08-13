require 'rails_helper'

describe 'User profile', :omniauth, type: :feature do
  context 'when authenticated' do

    before do
      signin
    end

    it 'shows my account page' do
      visit account_path
      expect(page).to have_text("John Doe's Profile")
    end

    it 'displays my likes and lets me remove one' do
      user = User.first
      user.likes.create!(artist_name: 'Meatloaf', found_through: 'Foo Bar')
      visit account_path
      expect(page).to have_text('Liked Artists')
      expect(page).to have_text('Meatloaf')

      click_on 'Remove'
      expect(page).to have_no_text('Meatloaf')
      expect(page).to have_text("Like has been removed.")
    end
  end

  it 'blocks me from viewing if not logged in' do
    visit account_path
    expect(page).to have_text('You must be logged in to perform this action.')
    expect(current_path).to eql(root_path)
  end
end
