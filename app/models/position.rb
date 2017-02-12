class Position < ApplicationRecord
  # has_one :volunteer
  validates :title, :presence => true
  validates :term, :presence => true


end
