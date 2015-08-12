require 'spec_helper'

RSpec.describe UserMailer do
  before(:each) do
    ActionMailer::Base.delivery_method = :test
    ActionMailer::Base.perform_deliveries = true
    ActionMailer::Base.deliveries = []
    @story = Factory.create(:story)
    EbookConfirmationMailer.confirmation_email(@story).deliver
  end

  after(:each) do
    ActionMailer::Base.deliveries.clear
  end


  it 'should send an email' do
    ActionMailer::Base.deliveries.count.should == 1
  end

  it 'renders the receiver email' do
    ActionMailer::Base.deliveries.first.to.should == @story.email
  end

  it 'should set the subject to the correct subject' do
    ActionMailer::Base.deliveries.first.subject.should == 'New Client!'
  end

  it 'renders the sender email' do
    ActionMailer::Base.deliveries.first.from.should == ['notifications@musicstory.com']
  end
end
