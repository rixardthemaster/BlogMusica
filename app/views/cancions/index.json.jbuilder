json.array!(@cancions) do |cancion|
  json.extract! cancion, :id, :titulo, :letra, :genero, :cantante_id
  json.url cancion_url(cancion, format: :json)
end
