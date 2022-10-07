class StudentsController < ApplicationController
    def index
        students = Student.all
        render json: students
    end
    def grades
        students_grades = Student.all.order("grade DESC")
        render json: students_grades
    end
    # def highest_grade
    #     student_highest_grade = Student.all.order("grade DESC").limit(1)[0]
    #     render json: student_highest_grade
    # end
end
