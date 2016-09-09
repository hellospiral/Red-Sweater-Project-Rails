class StudentsController < ApplicationController
  def index
    @students = Student.all
    render :index
  end

  def new
    @student = Student.new
  end
  def create
    @student = Student.new(student_params)
    if @student.save
      redirect_to :root
    else
      render :new
  end
end

  private
  def student_params
    params.require(:student).permit(:name, :age, :bio, :dream, :sponsored, :image, :gender)
  end
end
