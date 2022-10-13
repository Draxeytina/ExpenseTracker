class AddUserRefToSettlement < ActiveRecord::Migration[7.0]
  def change
    add_reference :settlements, :user, null: false, foreign_key: true
  end
end
