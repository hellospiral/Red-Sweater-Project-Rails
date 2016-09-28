class CreateVolunteers < ActiveRecord::Migration[5.0]
  def change
    create_table :volunteers do |t|
      t.column :current, :boolean
      t.column :city, :string
      t.column :country, :string
      t.column :name, :string
      t.column :title, :string
      t.column :latitude, :float
      t.column :longitude, :float
      t.column :bio, :text

      t.timestamps
    end
  end
end
