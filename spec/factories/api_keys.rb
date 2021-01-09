FactoryBot.define do
  factory :api_key do
    user { nil }
    access_token { "MyString" }
    expires_at { "2021-01-09 10:20:11" }
  end
end
