require "rails_helper"

describe 'unauth user views', type: :feature do

  it "can cannot view genres, artists, or related artists" do
    visit '/'

    expect(page).to have_content("Login")

    visit '/genres'
    click_link "Genres"

    expect(current_path).to eq('/genres')

    click_link "Pop"

    expect(page).to have_content('Pop Artists')

    first("artist").click

    expect(page).to have_content('Find similar artists')
    click_on "Find similar artists"

    expect(page).to have_content('...')
  end
end
