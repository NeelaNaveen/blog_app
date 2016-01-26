json.array!(@neelas) do |neela|
  json.extract! neela, :id, :username, :height, :weight, :blood, :group
  json.url neela_url(neela, format: :json)
end
