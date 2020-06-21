class Withdraw < ApplicationRecord
  belongs_to :account, dependent: :destroy
end
