class CreateTelephoneVerifications < ActiveRecord::Migration
  def change
    create_table :telephone_verifications do |t|
      t.string :borrowers_name
      t.date :date_of_receipt
      t.string :Res_phone_no
      t.string :person_contacted
      t.text :res_addr
      t.string :phone_no_borrower1
      t.date :borrowers_dob
      t.string :years_at_res
      t.string :premises
      t.string :cell_no
      t.text :comments1
      t.string :business_contact_no
      t.string :person_contacted_des
      t.text :business_addr
      t.string :designation_borrower
      t.text :nature_of_business
      t.string:phone_no_borrower2
      t.text :comments2
      t.string:call_attempts
      t.string:verifiers_name
      t.date:date_of_contact
      t.string:residence
      t.string:office
      t.date:date
      
      t.timestamps
    end
  end
end
