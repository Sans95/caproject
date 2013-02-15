class EvaluationSheet < ActiveRecord::Base
  # attr_accessible :title, :body
  has_many :loan_details, :dependent => :destroy
  has_many :credit_cards, :dependent => :destroy
  accepts_nested_attributes_for :loan_details,:credit_cards,:allow_destroy => true 
end
