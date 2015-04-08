class AddDepartamentoToDatoEstudiantes < ActiveRecord::Migration
  def change
    add_column :dato_estudiantes, :departamento, :string
  end
end
