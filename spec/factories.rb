FactoryBot.define do

  factory :deposit do
    account_id { 1 }
    amount { 100 }
  end

  factory :withdraw do
    account_id { 1 }
    amount { 10 }
  end

  factory :transfer do
    account_id { 1 }
    account_to { 2 }
    amount { 10 }
  end
end