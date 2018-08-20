class CreateClasslists < ActiveRecord::Migration[5.0]
  def change
    create_table :classlists do |t|
      t.string :student
      t.date :present
      t.date :late
      t.date :absent
      t.integer :total

      t.timestamps
    end
  end
end
