class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  after_create :create_account

  belongs_to :user, dependent: :destroy
  has_many :deposits
  has_many :withdraws
  has_many :transfers
  has_many :balances

  def create_account
    Account.create(user_id: self.id)
  end
end
