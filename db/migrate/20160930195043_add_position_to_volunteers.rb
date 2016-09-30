class AddPositionToVolunteers < ActiveRecord::Migration[5.0]
  def change
    add_column :volunteers, :position_id, :integer
  end
end
