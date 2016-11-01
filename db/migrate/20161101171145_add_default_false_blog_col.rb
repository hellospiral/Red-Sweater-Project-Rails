class AddDefaultFalseBlogCol < ActiveRecord::Migration[5.0]
  def change
    change_column :users, :blog, :boolean, :default => false

  end
end
