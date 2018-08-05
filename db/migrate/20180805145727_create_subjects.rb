class CreateSubjects < ActiveRecord::Migration[5.0]
  def change
    create_table :subjects do |t|
      t.string :subject_name
      t.string :subject_code
      t.integer :units
      t.string :day
      t.time :time_start
      t.time :time_end
      t.string :class_key

      t.timestamps
    end
  end
end
