FactoryBot.define do
  factory :city do
    name { "city1" }
    capital { "capital1" }
    state_id { 1 }
  end

  factory :city2 do
    name { "city2" }
    capital { "capital2" }
    state_id { 2 }
  end

  factory :state do
    name { "state1" }
    acronym { "st1" }
    region_id { 1 }
  end

  factory :state2 do
    name { "state2" }
    acronym { "st2" }
    region_id { 2 }
  end

  factory :region do
    name { "region1" }
  end

  factory :region2 do
    name { "region2" }
  end

  factory :bank do
    name { "bank1" }
    city_id { 1 }
  end

  factory :bank2 do
    name { "bank2" }
    city_id { 2 }
  end

  factory :user do
    email { "rick@max.com" }
    password  { "123456" }
    password_confirmation  { "123456" }
  end

  factory :user2 do
    email { "rick2@max.com" }
    password  { "123456" }
    password_confirmation  { "123456" }
  end

  factory :account do
    user { 1 }
  end

  factory :account2 do
    user_id { 1 }
  end

  factory :deposit do
    account_id { 1 }
    amount { 100 }
  end

  factory :deposit2 do
    account_id { 2 }
    amount { 100 }
  end

  factory :withdraw do
    account_id { 1 }
    amount { 10 }
  end

  factory :withdraw2 do
    account_id { 2 }
    amount { 10 }
  end

  factory :transfer do
    account_id { 1 }
    account_to { 2 }
    amount { 10 }
  end

  factory :transfer2 do
    account_id { 2 }
    account_to { 1 }
    amount { 10 }
  end
end