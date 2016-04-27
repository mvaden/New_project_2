class StudentsController < ApplicationController
  def index
    @students = Student.all
  end

  def show
    @todo = Todo.find(params[:id])
  end

end
