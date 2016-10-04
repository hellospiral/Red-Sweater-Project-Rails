class CreateGoodcauses < ActiveRecord::Migration[5.0]
  def change
    create_table :goodcauses do |t|
      t.column :name, :string
      t.column :details, :text
      t.column :cost, :integer
      t.column :sponsor_id, :integer
      
      t.timestamps
    end
  end
end
