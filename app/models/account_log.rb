class AccountLog < ApplicationRecord
  belongs_to :account
  belongs_to :title
  has_one :bank, through: :account
  has_one :user, through: :bank

  validates :comment, :amount, presence: true

  after_save :update_account_balance

  private

  def update_account_balance
    new_account_balance = account.balance + amount
    account.update(balance: new_account_balance)
  end
end
