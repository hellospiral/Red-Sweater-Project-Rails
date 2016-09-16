class CreateStudents < ActiveRecord::Migration[5.0]
  def change
    create_table :students do |t|
      t.column :name, :string
      t.column :age, :integer
      t.column :bio, :text
      t.column :dream, :string
      t.column :sponsored, :boolean
      t.column :sponsor_id, :integer

      t.timestamps
    end
  end
end
