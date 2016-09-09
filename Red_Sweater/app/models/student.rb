class Student < ActiveRecord::Base
  belongs_to :sponsor

  validates :name, :presence => true
end
