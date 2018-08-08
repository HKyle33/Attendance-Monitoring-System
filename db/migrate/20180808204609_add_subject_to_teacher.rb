class AddSubjectToTeacher < ActiveRecord::Migration[5.0]
  def change
    add_reference :teachers, :subject, foreign_key: true
  end
end
