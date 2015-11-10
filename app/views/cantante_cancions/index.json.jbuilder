json.array!(@cantante_cancions) do |cantante_cancion|
  json.extract! cantante_cancion, :id, :cantante_id, :cancion_id
  json.url cantante_cancion_url(cantante_cancion, format: :json)
end
