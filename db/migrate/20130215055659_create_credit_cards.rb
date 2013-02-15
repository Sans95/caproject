class CreateCreditCards < ActiveRecord::Migration
  def change
    create_table :credit_cards do |t|
      t.string :issued_by
      t.string :card_number
      t.string :credit_limit_fixed
      t.date :date_of_expiry
      t.integer :evaluation_sheet_id
      t.timestamps
    end
  end
end
