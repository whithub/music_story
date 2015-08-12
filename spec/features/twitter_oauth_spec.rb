require 'rspec'
require 'capybara'

describe 'user can login and out', type: :feature do

  scenario "should login successfully" do
    visit '/auth/twitter'
    page.should have_content("Logout")
  end

  scenario "should logout successfully" do
    visit '/auth/twitter'
    page.should have_content("Logout")
    click_on 'Logout'
    page.should have_content("Login")
  end
end



# require 'rails_helper'
#
# describe 'user can log in', type: :feature do
#   include Capybara::DSL
#
#   let(:user) { User.create(uid: '1', name: 'Whitney', oauth_token: '1111') }
#
#   before(:each) do
#     Capybara.app = MusicStory::Application
#     stub_omniauth_user
#     user
#   end
#
#   it 'user can login to Spotify' do
#     visit root_path
#     assert_equal 200, page.status_code
#
#     find(".nav navbar-nav .icon").click
#
#
#     assert_equal '/genres', current_path
#     assert page.has_content?("Welcome")
#   end
# end
