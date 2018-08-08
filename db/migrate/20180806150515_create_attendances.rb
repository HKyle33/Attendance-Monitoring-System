class CreateAttendances < ActiveRecord::Migration[5.0]
  def change
    create_table :attendances do |t|
      t.date :date_absent
      t.date :date_present

      t.timestamps
    end
  end
end
