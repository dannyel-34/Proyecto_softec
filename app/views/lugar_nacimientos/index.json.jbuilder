json.array!(@lugar_nacimientos) do |lugar_nacimiento|
  json.extract! lugar_nacimiento, :id, :nombre_departamento, :nombre_municipio, :nombre_centro_poblado, :nombre
  json.url lugar_nacimiento_url(lugar_nacimiento, format: :json)
end
