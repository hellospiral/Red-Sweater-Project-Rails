class StudentsController < ApplicationController
  def index
    @students = Student.all
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(student_params)
    if @student.save
      flash[:notice]="Student successfully added!"
      redirect_to :root
    else
      render :new
    end
  end

  def edit
    @student = Student.find(params[:id])
    render :edit
  end

  def update
    @student = Student.find(params[:id])
    if @student.update(student_params)
      flash[:notice]="Student successfully updated!"
      redirect_to :root
    else
      render :edit
    end
  end

  def destroy
    @student = Student.find(params[:id])
    @student.destroy
    flash[:alert]="This student has been removed"
    redirect_to :root
  end

  private
  def student_params
    params.require(:student).permit(:name, :age, :bio, :dream, :sponsored, :image, :gender)
  end
end
