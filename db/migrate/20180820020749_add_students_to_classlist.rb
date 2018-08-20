class AddStudentsToClasslist < ActiveRecord::Migration[5.0]
  def change
    add_reference :classlists, :students, foreign_key: true
  end
end
