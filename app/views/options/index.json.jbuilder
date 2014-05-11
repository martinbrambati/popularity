json.array!(@options) do |option|
  json.extract! option, :id, :option_label, :option_result, :imagequestion_id
  json.url option_url(option, format: :json)
end
