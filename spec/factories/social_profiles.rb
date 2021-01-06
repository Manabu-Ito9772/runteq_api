FactoryBot.define do
  factory :social_profile do
    user_id { 1 }
    sequence(:provider) { |n| "MyString#{n}" }
    sequence(:uid) { |n| "MyString#{n}" }
    sequence(:raw_info) { |n| "MyString#{n}" }
  end
end
