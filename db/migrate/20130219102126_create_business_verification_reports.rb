class CreateBusinessVerificationReports < ActiveRecord::Migration
  def change
    create_table :business_verification_reports do |t|
       t.string :name
       t.text :address
       t.boolean :home_loan, :default =>false
       t.boolean :vehicle_loan, :default =>false
       t.boolean :other_loan1, :default=>false
       t.string :other_loan2
       t.string :salaried
       t.string :other_sal
       t.string :loan_amount
       t.string :landmark
       t.string :work_hrs
       t.string :locality_of_off
       t.string :quality_of_off
       t.string :where_off_loc
       t.string :quality_of_build
       t.string :others
       t.string :type_of_off
       t.string :bus_cond
       t.boolean :com_name_plate, :default => false
       t.boolean :reception_area, :default => false
       t.boolean :security_guard, :default => false
       t.boolean :cabin, :default => false
       t.boolean :sec_or_type, :default => false
       t.boolean :air_condition, :default => false
       t.boolean :xerox, :default => false
       t.boolean :computer, :default => false
       t.string :furni_seen
       t.boolean :busi_act_seen, :default => false
       t.string :size_of_off
       t.string :no_of_people
       t.string :amount
       t.text :des_of_business
       t.string :person_contacted1
       t.string :des_or_rel
       t.string :app_met
       t.boolean :met_disk, :default => false
       t.string :years_business
       t.string :off_phone
       t.date :app_dob
       t.string :ownership_stat
       t.string :bus_org
       t.string :exist_of_firm
       t.string :firms_doi
       t.string :no_of_branch
       t.string :no_of_emp
       t.string :neighbour_check
       t.string :person_contacted2
       t.string :years_op_addr
       t.text :nat_of_business
       t.text :verifiers_comm
       t.date :date_verify
       t.string :time
       t.string :verifiers_name
       t.string :status
       t.text :reason
       t.date :date2
       t.timestamps
    end
  end
end
