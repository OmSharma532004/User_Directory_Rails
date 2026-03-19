class CreateAccounts < ActiveRecord::Migration[8.1]
  def change
    create_table :accounts do |t|
      t.references :bank, null: false, foreign_key: true
      t.bigint :type
      t.decimal :balance, precision: 10, scale: 2

      t.timestamps
    end
  end
end
