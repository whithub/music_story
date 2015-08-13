require "rails_helper"

describe 'auth user', :omniauth, type: :feature do

  before do
    signin
  end

  xit "can view related artists" do
    visit '/'
    fill_in "Tom Petty"  #fill_in .... with: "Tom Petty"
    click_on "Search"

    expect(current_path).to eq('/genres')
    expect(page).to have_content('Tom Petty')
  end
end

#stubbing -- ignore what is normally returns, and return something else
#ignore what is normally returned when current_user is called, and return admin (for this specific instance)

