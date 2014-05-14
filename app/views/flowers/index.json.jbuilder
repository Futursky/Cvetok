json.array!(@flowers) do |flower|
  json.extract! flower, :id, :name, :description, :price
  json.url flower_url(flower, format: :json)
end
