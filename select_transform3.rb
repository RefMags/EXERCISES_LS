def student_grade(arr)
  students_score_hash = arr.to_h
  class_score_sum = students_score_hash.values.sum
  average_score = class_score_sum / students_score_hash.values.size

  standardized_grade_score_band = {"A"=> 90-100, "B" => 80-89, "C" => 70-79, "D"=> 60-69, "F" => "below 60"}

  above_average_students = students_score_hash.select do |key, value|
    value >= average_score
  end

  above_average_students.map do |key, value|

  end
end

student_grade([["John", 40], ["Sean", 90], ["Brett", 70]])
