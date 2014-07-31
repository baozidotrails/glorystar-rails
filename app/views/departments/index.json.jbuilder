json.array!(@departments) do |department|
  json.extract! department, :id, :name, :describe, :introduction, :sort
  json.url department_url(department, format: :json)
end
