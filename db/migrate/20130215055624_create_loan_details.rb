class CreateLoanDetails < ActiveRecord::Migration
  def change
    create_table :loan_details do |t|
      t.string :bank
      t.string :loan_type
      t.string :loan_amount
      t.string :tenure
      t.date :date_of_loan
      t.string :emi
      t.integer :evaluation_sheet_id
      t.timestamps
    end
  end
end
