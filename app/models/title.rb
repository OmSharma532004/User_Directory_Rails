class Title < ApplicationRecord
    has_many :account_logs, dependent: :restrict_with_errors

    validates :name, presence: true
end
