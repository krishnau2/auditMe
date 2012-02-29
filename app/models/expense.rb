class Expense < ActiveRecord::Base
	has_many :expense_details, :dependent => :destroy

	accepts_nested_attributes_for :expense_details
	attr_accessible :expense_date,:total_amount,:expense_details_attributes
end
