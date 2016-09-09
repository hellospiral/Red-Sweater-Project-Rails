class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.column :name, :string
      t.column :date, :date
      t.column :time, :time
      t.column :venu, :string
      t.column :address, :string
      t.column :cost, :integer
      t.column :details, :text

      t.timestamps
    end
  end
end
