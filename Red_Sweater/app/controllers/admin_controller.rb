class AdminController < ApplicationController
  def index
    @students = Student.all
    @events = Event.all
  end
end
