class StudentsController < ApplicationController
    def index
        students = Student.all
        render json: students
    end
    def grades
        students = Student.all
        students_by_grade = students.sort_by { |i| i[:grade]}.reverse
        render json: students_by_grade
    end
    def highest_grade
        students = Student.all
        highest_student = students.sort_by { |i| i[:grade]}.reverse.first
        render json: highest_student
    end
end
