class AccountLog < ApplicationRecord
  belongs_to :account
  belongs_to :title
  has_one :bank, through: :account
  has_one :user, through: :bank

  validates :comment, :amount, presence: true
end
