class CreatePositions < ActiveRecord::Migration[5.0]
  def change
    create_table :positions do |t|
      t.column :title, :string
      t.column :volunteer_id, :integer
      t.column :current, :boolean
      t.column :available, :boolean
      t.column :details, :text
      t.column :term, :string
      t.column :stipend, :integer
      
      t.timestamps
    end
  end
end
