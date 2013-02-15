class CreateSiteInspections < ActiveRecord::Migration
  def change
    create_table :site_inspections do |t|
      t.string:name
      t.string:branch
      t.text:address
      t.string:phone
      t.date:date_site_visit
      t.string:verifier_name
      t.string:contact_person
      t.string:designation
      t.string:landmark
      t.string:remarks
      t.string:verifier_name2
      t.date:date_of_verification
      t.date:date
      t.string:place

      t.timestamps
    end
  end
end
