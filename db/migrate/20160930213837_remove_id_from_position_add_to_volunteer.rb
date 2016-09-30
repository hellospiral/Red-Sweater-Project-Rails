class RemoveIdFromPositionAddToVolunteer < ActiveRecord::Migration[5.0]
  def change
    remove_column :positions, :volunteer_id
    add_column :volunteers, :position_id, :integer
  end
end
