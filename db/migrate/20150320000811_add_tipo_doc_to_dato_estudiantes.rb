class AddTipoDocToDatoEstudiantes < ActiveRecord::Migration
  def change
    add_column :dato_estudiantes, :tipo_doc, :string
  end
end
