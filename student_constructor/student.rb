class Student
  def initialize(student, last_name = nil, grades = nil)
    if student.kind_of? (String)
      @first_name = student
      @last_name  = last_name unless last_name.nil?
      @grades     = grades unless grades.nil?
    elsif student.kind_of? (Hash)
      @first_name = student[:first_name]
      @last_name  = student[:last_name]
      @grades     = student[:grades]
    end
      @average    = @grades.inject(:+)/@grades.length.to_f
  end
end
