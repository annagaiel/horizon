def rankings(students)

  students.each_with_index do |student, i|
    puts "#{i + 1}. #{student}"
  end
end

rankings(['Johnny', 'Jane', 'Sally', 'Elizabeth', 'Michael'])
