class Transfer < ApplicationRecord
  belongs_to :account, dependent: :destroy
  has_many :balances

  validates :amount, numericality: true, presence: true
  validates :account_to, numericality: true, presence: true
end
