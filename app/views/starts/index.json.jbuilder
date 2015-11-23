json.array!(@starts) do |start|
  json.extract! start, :id, :name, :description, :elevation
  json.url start_url(start, format: :json)
end
