class RemoveImageFromStudents < ActiveRecord::Migration[5.0]
  def change
    remove_column :students, :image
  end
end
