class AddBlog < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :blog, :boolean, :default => false
  end
end
