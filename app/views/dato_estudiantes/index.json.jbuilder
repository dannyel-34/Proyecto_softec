json.array!(@dato_estudiantes) do |dato_estudiante|
  json.extract! dato_estudiante, :id, :codigo, :nombre, :apellido, :mail, :doc_identidad, :curso, :grado, :pais_id, :municipio_id, :direccion, :telefono, :celular, :genero
  json.url dato_estudiante_url(dato_estudiante, format: :json)
end
