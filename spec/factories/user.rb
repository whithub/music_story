FactoryGirl.define do
  factory :user do
    provider "twitter"
    sequence(:uid) { '12345' }
    sequence(:name) { |n| "Person_#{n}" }
  end
end

