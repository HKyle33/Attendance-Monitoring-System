class AddEnrollmentsToClasslist < ActiveRecord::Migration[5.0]
  def change
    add_reference :classlists, :enrollments, foreign_key: true
  end
end
