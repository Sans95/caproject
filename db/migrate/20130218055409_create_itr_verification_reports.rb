class CreateItrVerificationReports < ActiveRecord::Migration
  def change
    create_table :itr_verification_reports do |t|
      t.string :branch
      t.string :customer_name
      t.string :co_applicant_name
      t.string :app_acknowledge_no_1
      t.string :app_acknowledge_no_2
      t.string :app_acknowledge_no_3
      t.string :co_obligant_acknowledge_no_1
      t.string :co_obligant_acknowledge_no_2
      t.string :co_obligant_acknowledge_no_3
      t.date :app_date_IT_return_no_1
      t.date :app_date_IT_return_no_2
      t.date :app_date_IT_return_no_3
      t.date  :co_obligant_date_IT_return_no_1
      t.date  :co_obligant_date_IT_return_no_2
      t.date  :co_obligant_date_IT_return_no_3
      t.string:app_return_income_1
      t.string:app_return_income_2
      t.string:app_return_income_3
      t.string:co_obligant_return_income_1
      t.string:co_obligant_return_income_2
      t.string:co_obligant_return_income_3
      t.string:app_income_tax_1
      t.string:app_income_tax_2
      t.string:app_income_tax_3
      t.string:co_obligant_income_tax_1
      t.string:co_obligant_income_tax_2
      t.string:co_obligant_income_tax_3
      t.text:remarks
      t.date:date
      t.string:place
      t.timestamps
    end
  end
end 
