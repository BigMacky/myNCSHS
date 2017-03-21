json.extract! student_grade_subject, :id, :student_lrn, :subject_title, :quarter, :grade, :created_at, :updated_at
json.url student_grade_subject_url(student_grade_subject, format: :json)