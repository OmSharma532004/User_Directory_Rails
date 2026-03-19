class CreateAccountLogs < ActiveRecord::Migration[8.1]
  def change
    create_table :account_logs do |t|
      t.references :account, null: false, foreign_key: true
      t.string :comment
      t.references :title, null: false, foreign_key: true
      t.bigint :amount

      t.timestamps
    end
  end
end
