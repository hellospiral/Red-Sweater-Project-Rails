class AdminController < ApplicationController
  before_action :authenticate_user!

  def index
    @student = Student.new
    @event = Event.new
    @position = Position.new
    @goodcause = Goodcause.new
    @post = Post.new
    @students = Student.all
    @events = Event.all
    @positions = Position.all
    @goodcauses = Goodcause.all
    @posts = Post.all
  end
end
