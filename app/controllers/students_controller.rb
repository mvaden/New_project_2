class StudentsController < ApplicationController
  def index
    @students = Student.all
    @assignments = Assignment.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
    @student = Student.new
  end

  def create
    # this code is a bit confusing and would cause problems when trying to
    # create a student with a blank name. It looks like you copied code
    # from the lesson on validations, but that code was flagged in the LP
    # as being *not* the ideal way to approach validation. Make sure you're
    # thinking through what code does when copying!

    @student = Student.create!(student_params)
    flash[:notice] = "student created successfully!"
    redirect_to @student
    if params[:student][:name] == ""
      flash[:alert] = "Student can't be blank!"
      redirect_to @student
    else
      @student = Student.create(student_params)
      redirect_to @student
    end
  end

  def destroy
    @student = student.find(params[:id])
    @student.destroy
    redirect_to students_path
  end

end
