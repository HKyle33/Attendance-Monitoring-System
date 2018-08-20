class ChangeAbsentToBeBooleanInClasslists < ActiveRecord::Migration[5.0]
  def up
    change_column :classlists, :absent, :date
  end

  def down
    change_column :classlists, :absent, :boolean
  end
end
