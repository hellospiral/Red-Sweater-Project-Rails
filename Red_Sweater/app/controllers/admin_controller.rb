class AdminController < ApplicationController
  def index
    @students = Student.all
  end
end
