json.array!(@news) do |news|
  json.extract! news, :id, :title, :content, :url, :department_id
  json.url news_url(news, format: :json)
end
