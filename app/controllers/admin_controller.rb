class AdminController < ApplicationController
  def index
    @students = Student.all
    @events = Event.all
    @positions = Position.all 
  end
end
