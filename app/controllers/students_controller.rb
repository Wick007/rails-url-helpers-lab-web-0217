class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :activate]

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def activate
    # http://localhost:3030/students/1/activate
    @student.toggle(:active)
    @student.save 
    redirect_to show
  end

  private
  def set_student
    @student = Student.find(params[:id])
  end
end
