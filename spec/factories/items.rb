FactoryBot.define do
  factory :item do
    name { Faker::Zelda.character }
    done false
    todo_id nil
  end
end
