json.array!(@imagequestions) do |imagequestion|
  json.extract! imagequestion, :id, :file_name, :hint, :category_id
  json.url imagequestion_url(imagequestion, format: :json)
end
