class AddBlogToUserFix < ActiveRecord::Migration[5.0]
  def change
    remove_column :users, :blog
  end
end
