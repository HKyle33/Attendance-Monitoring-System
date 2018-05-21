class AddFirstNameToTeachers < ActiveRecord::Migration[5.0]
  def change
    add_column :teachers, :first_name, :string
  end
end
