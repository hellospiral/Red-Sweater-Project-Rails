class StudentsController < ApplicationController
  def index
    @students = Student.all.order(created_at: :desc)
  end
end
