class CreateExpenseDetails < ActiveRecord::Migration
  def self.up
    create_table :expense_details do |t|
    	t.references :expense
    	t.references :category
    	t.decimal :amount,{:precision => 10, :scale => 2}

      	t.timestamps	
    end
  end

  def self.down
    drop_table :expense_details
  end
end
