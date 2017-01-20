class AddImageToPositions < ActiveRecord::Migration[5.0]
  def self.up
    change_table :positions do |t|
      t.attachment :image
    end
  end
end
