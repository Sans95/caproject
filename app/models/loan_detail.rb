class LoanDetail < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :evaluation_sheet
end
