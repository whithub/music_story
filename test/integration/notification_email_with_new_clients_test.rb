require 'test_helper'

class NotificationEmailWithNewClientsTest < ActionDispatch::IntegrationTest
  include Capybara::DSL

  def setup
    Capybara.app = MusicStory::Application
    reset_session!
    # ActionMailer::Base.deliveries.clear
  end

  def test_loads_homepage
    skip
    visit '/'
    assert page.has_content?("Welcome")
  end


  def test_user_sees_email_form_when_loggin_in
    visit '/'
    assert ActionMailer::Base.deliveries.empty?

    click_on "Login"

    assert_equal '/', current_path

    assert_equal 1, ActionMailer::Base.deliveries.count

    mail = ActionMailer::Base.deliveries.last

    assert_equal ["whitcolorado@email.com"], mail.to
    assert_equal "New Client", mail.subject

    assert_equal " ", mail.body.parts.last.body.raw_source
  end

end
