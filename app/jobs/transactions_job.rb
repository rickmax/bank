class TransactionsJob < ApplicationJob
  queue_as :default

  def perform(id, name, amount)
    BankOperations.increment(id, name, amount)
  end
end
