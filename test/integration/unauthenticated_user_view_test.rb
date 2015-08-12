require "test_helper"

class UnauthenticatedUserViewTest < ActionDispatch::IntegrationTest
  include Capybara::DSL

  def setup
    Capybara.app = MusicStory::Application
  end

  test 'the unauthenticated user can only view login page' do
    visit root_path

    assert page.has_link? "Login"

    visit genres_path

    assert_raises(NoMethodError)
    assert root_path, current_path
  end
end
