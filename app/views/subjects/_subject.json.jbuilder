json.extract! subject, :id, :subject_title, :schedule, :instructor, :created_at, :updated_at
json.url subject_url(subject, format: :json)