class VolunteersController < ApplicationController

  def index
    @volunteers = Volunteer.all
    @hash = Gmaps4rails.build_markers(@volunteers) do |volunteer, marker|
      marker.lat volunteer.latitude
      marker.lng volunteer.longitude
      marker.infowindow volunteer.mapNotes
      marker.picture({
        :url => "/images/Map-Marker-Ball-Azure-icon.png",
        :width => "48",
        :height => "48"
        })
    end
  end
end
