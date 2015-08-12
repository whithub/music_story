require "rails_helper"

describe 'auth user can navigate pages', type: :feature do

  let(:user) { FactoryGirl.create(:user) }
  before { sign_in user }

  it "can view genres, artists, related artists" do
    visit '/'

    expect(page).to have_content("Music Story")
    expect(page).to_not have_content("Genres")

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

#stubbing -- ignore what is normally returns, and return something else
#ignore what is normally returned when current_user is called, and return admin (for this specific instance)

