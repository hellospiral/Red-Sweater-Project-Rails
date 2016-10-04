class AddImageToGoodcause < ActiveRecord::Migration[5.0]
  def self.up
    change_table :goodcauses do |t|
      t.attachment :image
    end
  end

  def self.down
    drop_attached_file :goodcauses, :image
  end
end
