FactoryBot.define do
    factory :state do
        association :region
        name { Faker::Address.state }
    end
end