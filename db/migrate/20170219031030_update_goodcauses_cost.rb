class UpdateGoodcausesCost < ActiveRecord::Migration[5.0]
  def change
    add_column :goodcauses, :suggested, :string
  end
end
