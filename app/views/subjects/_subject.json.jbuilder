json.extract! subject, :id, :subject_title, :subject_code, :units, :day, :time_start, :time_end, :class_key, :created_at, :updated_at
json.url subject_url(subject, format: :json)
