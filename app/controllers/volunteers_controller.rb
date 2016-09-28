class VolunteersController < ApplicationController

  def index
    @volunteers = Volunteer.all
    @hash = Gmaps4rails.build_markers(@volunteers) do |volunteer, marker|
      marker.lat volunteer.latitude
      marker.lng volunteer.longitude
    end
  end
end
