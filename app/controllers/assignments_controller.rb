class AssignmentsController < ApplicationController
  def index
    @assignments = Assignment.all
  end

  def show
    @assignment = Assignment.find(params[:id])
  end

  def new
    @assignment = Assignment.new
  end

  def create
    @assignment = Assignment.create!(assignment_params)
    flash[:notice] = "Assignment created successfully!"
    redirect_to @student
    if params[:assignment][:name] == ""
      flash[:alert] = "Assignment can't be blank!"
      redirect_to @student
    else
      @assignment = Assignment.create(assignment_params)
      redirect_to @assignment
    end
  end

  def destroy
    @assignment = assignment.find(params[:id])
    @assignment.destroy
    redirect_to assignments_path
  end
end
