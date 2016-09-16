class CreateSponsors < ActiveRecord::Migration[5.0]
  def change
    create_table :sponsors do |t|
      t.column :name, :string
      t.column :bio, :text
      t.column :location, :string

      t.timestamps
    end
  end
end
