FactoryBot.define do
    factory :city do
        association :state
        name { Faker::Address.city }
    end
end