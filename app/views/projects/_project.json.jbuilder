json.extract! project, :id, :title, :start_date, :end_date, :project_type, :role, :key_skill, :created_at, :updated_at
json.url project_url(project, format: :json)
