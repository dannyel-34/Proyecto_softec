class CreateContactos < ActiveRecord::Migration
  def change
    create_table :contactos do |t|
      t.string :nombre
      t.string :mail
      t.string :asunto
      t.text :mensaje

      t.timestamps null: false
    end
  end
end
