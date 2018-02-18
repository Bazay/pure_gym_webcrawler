json.extract! lesson, :id, :gym_id, :time, :duration, :status, :created_at, :updated_at
json.url lesson_url(lesson, format: :json)
