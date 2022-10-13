class CreateSettlements < ActiveRecord::Migration[7.0]
  def change
    create_table :settlements do |t|
      t.text :name
      t.float :amount, default: 0.0

      t.timestamps
    end
  end
end
