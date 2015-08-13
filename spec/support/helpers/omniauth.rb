module Omniauth

  module Mock
    def auth_mock
      OmniAuth.config.mock_auth[:twitter] = OmniAuth::AuthHash.new({
        'provider' => 'twitter',
        'uid' => '123545',
        'info' => {
          'name' => 'John Doe',
          'image' => 'mock_user_thumbnail_url'
        },
        'credentials' => {
          'token' => 'mock_token',
          'secret' => 'mock_secret'
        },
        'extra' => {
          'raw_info' => {
            'name' => 'John Doe'
          }
        }
      }.symbolize_keys)
    end
  end

  module SessionHelpers
    def signin
      visit root_path
      expect(page).to have_content("Login")
      auth_mock
      click_link "Twitter"
    end
  end

end
