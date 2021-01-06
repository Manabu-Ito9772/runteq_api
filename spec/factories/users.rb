FactoryBot.define do
  factory :user do
    sequence(:name) { |n| "MyString#{n}" }
    sequence(:email) { |n| "MyString#{n}" }
    crypted_password { "MyString" }
    salt { "MyString" }
  end
end
