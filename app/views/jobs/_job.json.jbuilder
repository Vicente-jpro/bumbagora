json.extract! job, :id, :title, :type, :description, :salary, :expiry_date, :category_id, :user_id, :created_at, :updated_at
json.url job_url(job, format: :json)
