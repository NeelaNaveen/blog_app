json.array!(@navns) do |navn|
  json.extract! navn, :id, :username, :height, :weight, :location
  json.url navn_url(navn, format: :json)
end
