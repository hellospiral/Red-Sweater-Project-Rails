class StudentsController < ApplicationController
  def index
    @students = Student.all
  end

  def new
    @student = Student.new
    respond_to do |format|
      format.html {redirect_to admin_index_path}
      format.js
    end
  end

  def create
    @student = Student.new(student_params)
    if @student.save
      respond_to do |format|
        format.html { redirect_to admin_index_path }
        format.js
      end
    end
  end

  def edit
    @student = Student.find(params[:id])
    respond_to do |format|
      format.html {redirect_to admin_index_path}
      format.js
    end
  end

  def update
    @student = Student.find(params[:id])
    if @student.update(student_params)
      flash[:notice]="Student successfully updated!"
      respond_to do |format|
        format.html {redirect_to admin_index_path}
        format.js
      end
    end
  end

  def destroy
    @student = Student.destroy(params[:id])
    flash[:alert]="This student has been removed"
    respond_to do |format|
      format.html { redirect_to admin_index_path }
      format.js
    end
  end

  private
  def student_params
    params.require(:student).permit(:name, :age, :bio, :dream, :sponsored, :image, :gender)
  end
end
