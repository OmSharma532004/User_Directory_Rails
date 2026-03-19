class Title < ApplicationRecord
    has_many :account_logs, dependent: :restrict_with_error

    validates :name, presence: true
end
