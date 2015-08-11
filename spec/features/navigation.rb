require "rails_helper"

feature "a guest can navigate pages" do
  it "from the home page, authenticate, search artist, explore artist page" do
    visit '/'

    expect(page).to have_content("Music Story")
    expect(page).to_not have_content("Genres")

    click_link "Find a Park"

    expect(current_path).to eq('/maps')
    expect(page).to have_content("Near Me")

    click_link "Park Finder"

    expect(current_path).to eq('/')
  end
end
