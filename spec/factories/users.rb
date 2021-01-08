FactoryBot.define do
  factory :user do
    sequence(:name) { |n| "MyString#{n}" }
    sequence(:email) { |n| "MyString#{n}" }
    password { "password" }
  end
end
