class RemoveIdFromVolunteer < ActiveRecord::Migration[5.0]
  def change
    remove_column :volunteers, :position_id
  end
end
