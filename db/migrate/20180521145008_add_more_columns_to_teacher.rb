class AddMoreColumnsToTeacher < ActiveRecord::Migration[5.0]
  def change
    add_column :teachers, :last_name, :string
    add_column :teachers, :id_number, :string
  end
end
