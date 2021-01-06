FactoryBot.define do
  factory :article do
    user_id { 1 }
    sequence(:title) { |n| "MyString#{n}" }
    sequence(:contents) { |n| "MyText#{n}" }
    status { 0 }
  end
end
