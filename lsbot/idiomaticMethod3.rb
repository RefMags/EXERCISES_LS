STUDENT_GRADE_AND_RANGE = {"A" => (90..100),
                            "B" => (80..89),
                            "C" => (70..79),
                            "D" => (60..69),
                            "F" => (0..59)}

def convert_score_to_grade(arr)
  students_names_and_scores = arr.to_h
  students_scores_average = students_names_and_scores.values.sum / students_names_and_scores.size

  above_average_students = students_names_and_scores.select do |greater_key, score_value|
      score_value >= students_scores_average
  end

  counter = 0

  transformed_student_record = above_average_students.map do |name_key, score_value|
    grade = STUDENT_GRADE_AND_RANGE.find {|grade_key, range| range.include?(score_value)}[0]
    [name_key, grade]
  end
  p transformed_student_record.to_h
end

convert_score_to_grade([["Sam",55], ["Mike", 90], ["Grace", 80], ["Kate", 63]]) #== [["Mike", 90], ["Grace", 80]]
