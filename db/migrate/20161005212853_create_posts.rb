class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.attachment :image
      t.column :title, :string
      t.column :body, :text
      t.column :quote, :string
      t.column :author, :string

      t.timestamps
    end
  end
end
