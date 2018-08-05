json.extract! subject, :id, :subject_name, :subject_code, section:, :units, :day, :time_start, :time_end, :class_key, :created_at, :updated_at
json.url subject_url(subject, format: :json)
