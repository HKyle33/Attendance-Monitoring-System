class RemoveSubjectsFromTeacher < ActiveRecord::Migration[5.0]
  def change
    remove_reference :teachers, :subjects, foreign_key: true
  end
end
