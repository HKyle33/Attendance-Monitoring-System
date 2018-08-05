class AddClassSectionToSubjects < ActiveRecord::Migration[5.0]
  def change
    add_column :subjects, :section, :string
  end
end
