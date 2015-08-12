class UserMailer < ApplicationMailer
  default from: 'notifications@musicstory.com'

  def new_user_email(user)
    @user = user
    mail(to: 'whitcolorado@gmail.com', subject: 'New Client!')
  end
end
