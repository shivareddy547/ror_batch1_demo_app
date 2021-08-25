json.extract! student, :id, :first_name, :last_name, :email, :graduation, :created_at, :updated_at
json.url student_url(student, format: :json)
