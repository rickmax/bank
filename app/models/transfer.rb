class Transfer < ApplicationRecord
  belongs_to :account, dependent: :destroy
end
