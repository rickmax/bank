FactoryBot.define do
    factory :region do
        name { %w[norte sul sudeste nordeste centro-oeste].sample }
    end
end