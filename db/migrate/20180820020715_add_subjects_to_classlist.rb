class AddSubjectsToClasslist < ActiveRecord::Migration[5.0]
  def change
    add_reference :classlists, :subjects, foreign_key: true
  end
end
