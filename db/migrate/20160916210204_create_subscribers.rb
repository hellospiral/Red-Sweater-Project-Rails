class CreateSubscribers < ActiveRecord::Migration[5.0]
  def change
    create_table :subscribers do |t|
      t.column :email, :string

      t.timestamps
    end
  end
end
