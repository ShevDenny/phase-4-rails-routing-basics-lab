class StudentsController < ApplicationController
    def index
      students = Student.all 
      
      render json: students
    end

    def grades
        students = Student.order(grade: :desc)

        render json: students
    end

    def highest_grade
        top_student = Student.order(grade: :desc).first
        # top_student = students.first


        render json: top_student 
    end
end
