class AddBiosToStudents < ActiveRecord::Migration[5.0]
  def self.up
    change_table :students do |t|
      t.attachment :summarypage
    end
  end
end
