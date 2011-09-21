class ChangeAmountDecimalTypeToDecimalWithScale < ActiveRecord::Migration
  def self.up
    change_column :expenses, :amount, :decimal, {:precision => 10, :scale => 2}
  end

  def self.down
    change_column :expenses, :amount, :decimal, {:precision => 10}
  end
end
