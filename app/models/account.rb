class Account < ApplicationRecord
  belongs_to :bank
  has_many :account_logs, dependent: :destroy
  has_one :user, through: :bank

  enum :type, { savings: 1, current: 2 }

  validates :bank, uniqueness: { scope: :type }
  validates :balance, numericality: { greater_than: 0 }
end
