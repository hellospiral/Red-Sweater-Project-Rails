class Volunteer < ApplicationRecord

  geocoded_by :city
  after_validation :geocode
end
