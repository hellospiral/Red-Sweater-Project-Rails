class AddImageAttachToUsers < ActiveRecord::Migration[5.0]
  def self.up
    change_table :students do |t|
      t.attachment :image
    end

    def self.down
      drop_attached_file :students, :image_tag
    end

    def change
      remove_column :students, :image, :string
    end
  end
end
