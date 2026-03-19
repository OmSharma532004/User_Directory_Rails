class Bank < ApplicationRecord
  belongs_to :user
  has_many :accounts, dependent: :destroy
  has_many :account_logs, through: :accounts

  validates :name, presence: true, uniqueness: { scope: :user }
end
