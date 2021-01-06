FactoryBot.define do
  factory :comment do
    article_id { 1 }
    user_id { 1 }
    sequence(:contents) { |n| "MyText#{n}" }
  end
end
