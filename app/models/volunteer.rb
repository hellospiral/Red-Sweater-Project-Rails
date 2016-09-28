class Volunteer < ApplicationRecord

  geocoded_by :address

  after_validation :geocode

  def address
    self.city + " " + self.country
  end

  def mapNotes
    self.name + " | " + self.city + ", " + self.country
  end
end
