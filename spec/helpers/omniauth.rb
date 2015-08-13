module Omniauth

  module Mock
    def auth_mock
      OmniAuth.config.mock_auth[:twitter] = {
        'provider' => 'twitter',
        'uid' => '12345',
        'info' => {
          'name' => 'whitney'
        },
        'credentials' => {
          'token' => 'mock_token',
          'secret' => 'mock_secret'
        }
      }
    end
  end

  module SessionHelpers
    def signin(as_new_user: true, role: 'regular_user')
      visit root_path
      expect(page).to have_content("Login")
      unless as_new_user
        FactoryGirl.create(:user, uid: '12345', provider: 'twitter', role: role)
      end
      auth_mock
      click_link "Log In"
    end
  end

end
