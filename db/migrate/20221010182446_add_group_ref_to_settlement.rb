class AddGroupRefToSettlement < ActiveRecord::Migration[7.0]
  def change
    add_reference :settlements, :group, null: false, foreign_key: true
  end
end
