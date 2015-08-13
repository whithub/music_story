require "rails_helper"

describe 'auth user can browse genres', :omniauth, type: :feature do

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
end

#stubbing -- ignore what is normally returns, and return something else
#ignore what is normally returned when current_user is called, and return admin (for this specific instance)

