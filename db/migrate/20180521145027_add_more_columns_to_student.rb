class AddMoreColumnsToStudent < ActiveRecord::Migration[5.0]
  def change
    add_column :students, :last_name, :string
    add_column :students, :id_number, :string
  end
end
