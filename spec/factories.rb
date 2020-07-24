FactoryBot.define do
  factory :city do
    name { "MyString" }
    capital { "MyString" }
    state { nil }
  end

  factory :state do
    name { "MyString" }
    acronym { "MyString" }
    region { nil }
  end

  factory :region do
    name { "MyString" }
  end

  factory :bank do
    name { "MyString" }
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