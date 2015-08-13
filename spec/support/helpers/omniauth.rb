module Omniauth

  module Mock
    def auth_mock
      OmniAuth.config.mock_auth[:twitter] = {
        'provider' => 'twitter',
        'uid' => '12345',
        'info' => {
          'name' => 'foo_mockuser'
        },
        'credentials' => {
          'token' => 'mock_token',
          'secret' => 'mock_secret'
        }
      }
    end
  end

  module SessionHelpers
    def signin
      visit root_path
      expect(page).to have_content("Log In")
      auth_mock
      click_link "Log In"
    end
  end

end
