class CreateEvaluationSheets < ActiveRecord::Migration
  def change
    create_table :evaluation_sheets do |t|
      t.date :date_of_receipt
      t.date :date_of_report
      t.text :app_res_address
      t.text :app_office_address
      t.string :app_residence_phone
      t.string :app_office_phone
      t.string :app_mobile
      t.string :app_designation
      t.string :app_email_id
      t.date :app_dob
      t.text :co_app_res_address
      t.text :co_app_office_address
      t.string :co_app_residence_phone
      t.string :co_app_mobile
      t.string :co_app_relationship
      t.date :co_app_dob
      t.string :co_app_office_phone
      t.string :co_app_designation
      t.string :education_background
      t.text :family_background
      t.string :residence_detials
      t.string :residence_since
      t.string :no_of_dependants
      t.string :years_in_current_company
      t.text :nature_of_business_activities
      t.text :total_experience
      t.string :loan_type
      t.string :loan_requested
      t.string :loan_eligibility
      t.string :tenor
      t.string :ROI
      t.string :personal_discussion_by
      t.string :name_of_business_org
      t.string :nature_of_business
      t.string :years_in_the_current_business
      t.string :turnover_of_the_company
      t.string :office_premises
      t.text :employee_details
      t.string :main_clients
      t.text :comments_on_mode_of_sales
      t.string :liabilities
      t.string :with_corporation_bank_1
      t.string :with_corporation_bank_2
      t.string :other_banks_1
      t.string :other_banks_2
      t.string :app_income_from_business
      t.string :app_salary
      t.string :app_rental_income
      t.string :app_other_source_income
      t.string :app_total_income
      t.string :app_house_hold_expense
      t.string :app_disposable_income
      t.string :co_app_income_from_business
      t.string :co_app_salary
      t.string :co_app_rental_income
      t.string :co_app_other_source_income
      t.string :co_app_total_income
      t.string :co_app_house_hold_expense
      t.string :co_app_disposable_income
      t.text :property_address
      t.date :date_of_site_visit
      t.string :person_visited
      t.string :type_of_locality
      t.string :neighborhood_confirmation
      t.string :total_no_of_floors_building
      t.string :is_the_property_ready
      t.string :year_of_construction
      t.string :occupation_status
      t.string :area_of_land_or_flat
      t.string :cost_of_land_or_flat
      t.string :cost_of_construction
      t.string :total_cost_of_property
      t.date :date_completion
      t.string :land_mark
      t.text :observations
      t.text :end_use
      t.string :established_since
      t.string :no_of_projects_executed_so_far
      t.string :no_of_flats_sold
      t.string :no_of_flats_constructed
      t.text :enquiries_made
      t.string :app_residence_physical
      t.string :app_business_physical
      t.string :app_telephone_verify_residence
      t.string :app_telephone_verify_office
      t.string :app_doc_verified_original
      t.string :app_dob_signature_proof
      t.string :app_id_proof
      t.string :app_pay_slips
      t.string :app_bank_statement
      t.string :app_IT_return
      t.string :app_ITR_check_status
      t.string :co_app1_residence_physical
      t.string :co_app1_business_physical
      t.string :co_app1_phone_verify_residence
      t.string :co_app1_phone_verify_office
      t.string :co_app1_doc_verified_original
      t.string :co_app1_dob_signature_proof
      t.string :co_app1_id_proof
      t.string :co_app1_pay_slips
      t.string :co_app1_bank_statement
      t.string :co_app1_IT_return
      t.string :co_app1_ITR_check_status
      t.string :co_app2_residence_physical
      t.string :co_app2_business_physical
      t.string :co_app2_telephone_verify_residence
      t.string :co_app2_telephone_verify_office
      t.string :co_app2_doc_verified_original
      t.string :co_app2_dob_signature_proof
      t.string :co_app2_id_proof
      t.string :co_app2_pay_slips
      t.string :co_app2_bank_statement
      t.string :co_app2_IT_return
      t.string :co_app2_ITR_check_status
      t.text :app_remarks
      t.date :date

      t.timestamps
    end
  end
end