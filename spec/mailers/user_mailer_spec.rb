require "rails_helper"

RSpec.describe UserMailer, type: :mailer do

  describe "new_user_email" do
    let(:user) { FactoryGirl.build(:user) }
    let(:mail) { UserMailer.new_user_email(user) }

    it "renders the headers" do
      expect(mail.subject).to eq("New Client!")
      expect(mail.to).to eq(["whitcolorado@gmail.com"])
      expect(mail.from).to eq(["notifications@musicstory.com"])
    end

    it "renders the body" do
      expect(mail.body.encoded).to match("A new client has signed into Music Story!")
    end
  end

end
