class AddLinkNameToStudents < ActiveRecord::Migration[5.0]
  def change
    add_column :students, :biolink, :string
  end
end
