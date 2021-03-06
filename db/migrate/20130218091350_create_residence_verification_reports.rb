class CreateResidenceVerificationReports < ActiveRecord::Migration
  def change
    create_table :residence_verification_reports do |t|
      t.string :name
      t.text :address
      t.boolean :home_loan,:default => false
      t.boolean :plot_loan,:default => false
      t.boolean :oth_loan,:default => false
      t.string :other_loan
      t.string :salaried
      t.string :other_sal
      t.string :loan_amount
      t.string :locality
      t.string :surroundings
      t.string :accessibility
      t.boolean :entrance_motorable,:default => false
      t.boolean :add_conf,:default => false
      t.string :correct_pin
      t.string :prominent_landmark    
      t.string :type_off
      t.string :accomodation
      t.string :accom_others
      t.string :no_of_stories
      t.boolean :watchman,:default => false
      t.boolean :lift,:default => false
      t.boolean:security_board,:default => false
      t.boolean :app_name_outside_door,:default => false
      t.string :cars_seen_in_around_res
      t.string :make
      t.string :ext_appearence_of_build
      t.boolean :car_park,:default => false
      t.string :entry_into_res_permited
      t.string :person_cont_name
      t.string :relationship
      t.string :res_internal_furni
      t.text :assets_seen
      t.string:assets_others
      t.string :res_appear_to_be
      t.string :appro_size_flat_sqft
      t.string :sq_yards
      t.string :ground
      t.boolean :domestic_help,:default => false
      t.date :date_1
      t.text :remarks
      t.date :date_2          
          
        
      t.timestamps
      
    end
  end
end
