require "rails_helper"

describe 'auth user can browse genres', type: :feature do

  let(:user) { FactoryGirl.create(:user) }
  before { sign_in user }

  it "can browse genres" do
    visit '/genres'
    click_on "Pop"

    expect(page).to have_content('Pop Artists')
    expect(page).to have_content('Beyonce')


    visit '/genres'
    click_on "Blues"

    expect(page).to have_content('Blues Artists')

    visit '/genres'
    click_on "Country"

    expect(page).to have_content('Country Artists')
  end
end

#stubbing -- ignore what is normally returns, and return something else
#ignore what is normally returned when current_user is called, and return admin (for this specific instance)

