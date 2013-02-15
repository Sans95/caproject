class AddPartnersToEvaluationSheet < ActiveRecord::Migration
  def change
    add_column :evaluation_sheets, :no_of_partners_or_directors, :string
  end
end
