class StudentsController < ApplicationController

  def index
    if params[:name]
      search_name = params[:name].capitalize
      students = Student.where(first_name: search_name).or(Student.where(last_name: search_name)) 
    else
      students = Student.all
    end
    render json: students 
  end

  def show
    student = Student.find(params[:id])
    render json: student
  end

  def search
    student = Student.find
  end
end
