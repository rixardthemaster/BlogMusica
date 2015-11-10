json.array!(@cantantes) do |cantante|
  json.extract! cantante, :id, :nombre, :genero, :pais
  json.url cantante_url(cantante, format: :json)
end
