FactoryBot.define do
  factory :user do
    name { Faker::Name.name }
    email "safi@test.com"
    password_digest "123456"
  end
end
