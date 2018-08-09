class RemoveTeacherFromSubjects < ActiveRecord::Migration[5.0]
  def change
    remove_reference :subjects, :teacher, foreign_key: true
  end
end
