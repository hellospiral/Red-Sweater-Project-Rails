class UpdateEvents < ActiveRecord::Migration[5.0]
  def change
    add_column :events, :start, :datetime
    add_column :events, :end, :datetime
    remove_column :events, :date
  end
end
