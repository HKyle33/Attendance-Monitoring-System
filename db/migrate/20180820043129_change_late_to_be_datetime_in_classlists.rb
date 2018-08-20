class ChangeLateToBeDatetimeInClasslists < ActiveRecord::Migration[5.0]
  def up
    change_column :classlists, :late, :date
  end

  def down
    change_column :classlists, :late, :datetime
  end
end
