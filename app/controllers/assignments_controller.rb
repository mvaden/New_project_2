class AssignmentsController < ApplicationController

  # I noticed a lot of duplication between the students index and the
  # assignments index... they both show the exact same info (list of
  # students and assingments)
  def index
    @students = Student.all
    @assignments = Assignment.all
  end

  def show
    @assignment = Assignment.find(params[:id])
  end

  def new
    @assignment = Assignment.new
  end

  def create
    # @assignment = Assignment.create!(assignment_params)
    # flash[:notice] = "Assignment created successfully!"
    # redirect_to @assignment
    # if params[:assignment][:name] == ""
    #   flash[:alert] = "Assignment can't be blank!"
    #   redirect_to @assignment
    # else
    #   @assignment = Assignment.create(assignment_params)
    #   redirect_to @assignment
    # end
  end

  def destroy
    @assignment = Assignment.find(params[:id])
    @assignment.destroy
    redirect_to assignments_path
  end
end
