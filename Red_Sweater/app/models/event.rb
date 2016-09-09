class Event < ActiveRecord::Base
  validates :name, :cost, :date, :presence => true
end
