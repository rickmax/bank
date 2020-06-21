class Balance < ApplicationRecord
  belongs_to :account, dependent: :destroy
  belongs_to :deposit
  belongs_to :withdraw
  belongs_to :transfer
end
