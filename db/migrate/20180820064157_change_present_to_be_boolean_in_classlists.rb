class ChangePresentToBeBooleanInClasslists < ActiveRecord::Migration[5.0]
  def up
    change_column :classlists, :present, :date
  end

  def down
    change_column :classlists, :present, :boolean
  end
end
