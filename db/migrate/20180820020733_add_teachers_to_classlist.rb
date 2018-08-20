class AddTeachersToClasslist < ActiveRecord::Migration[5.0]
  def change
    add_reference :classlists, :teachers, foreign_key: true
  end
end
