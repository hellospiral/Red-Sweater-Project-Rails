class AddBlogToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :blog, :boolean
  end
end
