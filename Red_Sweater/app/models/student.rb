class Student < ActiveRecord::Base
  belongs_to :sponsor

  validates :name, :age, :presence => true
  validates :bio, :length => { maximum: 200 }
end
