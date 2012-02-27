class CreateExpenses < ActiveRecord::Migration
  def self.up
    create_table :expenses do |t|
      t.date :expense_date
      t.decimal :total_amount,{:precision => 10, :scale => 2}

      t.timestamps
    end
  end

  def self.down
    drop_table :expenses
  end
end
