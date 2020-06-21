class Balance < ApplicationRecord
  belongs_to :account, dependent: :destroy
  belongs_to :deposit, optional: true
  belongs_to :withdraw, optional: true
  belongs_to :transfer, optional: true
end
