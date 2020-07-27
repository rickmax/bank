FactoryBot.define do
    factory :bank do
        association :city
        name { Faker::Bank.name }
    end
end