class StudentsController < ApplicationController
  before_action :set_student, only: :show
  
  def index
    @students = Student.all
  end

  def show
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end

    def activate_student_path(student)
      @student = student
      @student.activate = true
      @student.save
      redirect '/show'
    end
end