class CreateLugarNacimientos < ActiveRecord::Migration
  def change
    create_table :lugar_nacimientos do |t|
      t.string :nombre_departamento
      t.string :nombre_municipio
      t.string :nombre_centro_poblado
      t.string :nombre

      t.timestamps null: false
    end
  end
end
