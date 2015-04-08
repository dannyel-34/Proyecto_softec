class CreateDatoEstudiantes < ActiveRecord::Migration
  def change
    create_table :dato_estudiantes do |t|
      t.integer :codigo
      t.string :nombre
      t.string :apellido
      t.string :mail
      t.string :doc_identidad
      t.string :curso
      t.string :grado
      t.references :pais, index: true
      t.references :municipio, index: true
      t.string :direccion
      t.string :telefono
      t.string :celular
      t.boolean :genero

      t.timestamps
    end
  end
end
