class AddFchNacimientoToDatoEstudiantes < ActiveRecord::Migration
  def change
    add_column :dato_estudiantes, :fch_nacimiento, :date
  end
end
