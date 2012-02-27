class Category < ActiveRecord::Base
  has_many :expense_details
end
