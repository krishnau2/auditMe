class Expense < ActiveRecord::Base
	has_many :expense_details, :dependent => :destroy

	accepts_nested_attributes_for :expense_details
	attr_accessible :expense_date,:expense_details_attributes,:category_name
end
