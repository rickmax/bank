class Deposit < ApplicationRecord
  belongs_to :account, dependent: :destroy
  has_many :balances
  after_save :increment_balance

  validates :amount, :numericality => { :greater_than_or_equal_to => 1 }, presence: true

  def increment_balance
    TransactionsJob.perform_later(self.id, self.class.name, self.amount)
  end
end
