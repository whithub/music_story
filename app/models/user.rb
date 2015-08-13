class User < ActiveRecord::Base
  validates :uid, presence: true, uniqueness: true
  validates :name, presence: true

  has_many :likes

  after_create :notify_admin

  def notify_admin
    UserMailer.new_user_email(self).deliver_later
  end

  def self.from_omniauth(auth_info)
    if user = find_by(uid: auth_info.uid)
      user
    else
      create({name:           auth_info.info.name,
          uid:                auth_info.uid,
          oauth_token:        auth_info.credentials.token,
          oauth_token_secret: auth_info.credentials.secret
        })
    end
  end
end
