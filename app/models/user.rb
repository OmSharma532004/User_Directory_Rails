class User < ApplicationRecord
    has_many :banks, dependent: :destroy
    has_many :accounts, through: :banks
    has_many :account_logs, through: :accounts

    validates :name, presence: true
end
