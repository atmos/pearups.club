class StudentsController < ApplicationController
  # New Student
  def new
    @student = Student.new
  end

  # Edit Existing Student
  def edit
    @student = Student.find(params[:id])
  end

  # Create a new student
  def create
    @student = Student.new(student_params)

    # If the student isn't valid, get outta there
    if @student.save
      redirect_to @student
    else
      render 'new'
    end
  end

  # Show specific Student
  def show
    @student = Student.find(params[:id])
  end

  # Show all students
  def index
    @students = Student.all
  end

  # Update an record
  def update
    @student = Student.find(params[:id])

    if @student.update(student_params)
      redirect_to @student
    else
      render 'edit'
    end
  end

  # Destroy things
  def destroy
    @student = Student.find(params[:id])
    @student.destroy

    redirect_to students_path
  end

  # Private Methods
  private

  def student_params
    params.require(:student).permit(:name,:wanted_skills,:email,:twitter)
  end
end
