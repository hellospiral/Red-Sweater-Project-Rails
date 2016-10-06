class AdminController < ApplicationController
  def index
    @students = Student.all
    @events = Event.all
    @positions = Position.all
    @goodcauses = Goodcause.all
    @posts = Post.all
  end
end
