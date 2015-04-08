# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20150407023646) do

  create_table "alumnos", force: true do |t|
    t.string   "codigo"
    t.string   "nombres"
    t.string   "apellidos"
    t.string   "tipo_doc"
    t.string   "nro_doc"
    t.boolean  "genero"
    t.string   "pais"
    t.string   "departamento"
    t.string   "municipio"
    t.datetime "fch_nacimiento"
    t.string   "mail"
    t.string   "direccion"
    t.string   "tel"
    t.string   "estado_civil"
    t.integer  "pais_id",           limit: nil, precision: 38
    t.integer  "departamento_id",   limit: nil, precision: 38
    t.integer  "municipio_id",      limit: nil, precision: 38
    t.integer  "estado_civil_id",   limit: nil, precision: 38
    t.integer  "tipo_documento_id", limit: nil, precision: 38
    t.datetime "created_at",                                   null: false
    t.datetime "updated_at",                                   null: false
  end

  add_index "alumnos", ["departamento_id"], name: "i_alumnos_departamento_id"
  add_index "alumnos", ["estado_civil_id"], name: "i_alumnos_estado_civil_id"
  add_index "alumnos", ["municipio_id"], name: "index_alumnos_on_municipio_id"
  add_index "alumnos", ["pais_id"], name: "index_alumnos_on_pais_id"
  add_index "alumnos", ["tipo_documento_id"], name: "i_alumnos_tipo_documento_id"

  create_table "angelos", force: true do |t|
    t.string   "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "assignments", force: true do |t|
    t.integer  "user_id",    limit: nil, precision: 38
    t.integer  "role_id",    limit: nil, precision: 38
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
  end

  add_index "assignments", ["role_id"], name: "index_assignments_on_role_id"
  add_index "assignments", ["user_id"], name: "index_assignments_on_user_id"

  create_table "clientes", force: true do |t|
    t.string   "nombre"
    t.string   "mail"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contactos", force: true do |t|
    t.string   "nombre"
    t.string   "mail"
    t.string   "asunto"
    t.text     "mensaje"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dato_estudiantes", force: true do |t|
    t.integer  "codigo",         limit: nil, precision: 38
    t.string   "nombre"
    t.string   "apellido"
    t.string   "mail"
    t.string   "doc_identidad"
    t.string   "curso"
    t.string   "grado"
    t.integer  "pais_id",        limit: nil, precision: 38
    t.integer  "municipio_id",   limit: nil, precision: 38
    t.string   "direccion"
    t.string   "telefono"
    t.string   "celular"
    t.boolean  "genero"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "fch_nacimiento"
    t.string   "tipo_doc"
    t.string   "departamento"
  end

  add_index "dato_estudiantes", ["municipio_id"], name: "i_dat_est_mun_id"
  add_index "dato_estudiantes", ["pais_id"], name: "i_dato_estudiantes_pais_id"

  create_table "departamentos", force: true do |t|
    t.string   "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "estado_civils", force: true do |t|
    t.string   "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "estudiantes", force: true do |t|
    t.string   "codigo"
    t.string   "nombres"
    t.string   "apellidos"
    t.string   "tipo_doc"
    t.string   "nro_doc"
    t.boolean  "genero"
    t.string   "pais"
    t.string   "departamento"
    t.string   "municipio"
    t.datetime "fch_nacimiento"
    t.string   "mail"
    t.string   "direccion"
    t.string   "tel"
    t.string   "estado_civil"
    t.integer  "pais_id",           limit: nil, precision: 38
    t.integer  "departamento_id",   limit: nil, precision: 38
    t.integer  "municipio_id",      limit: nil, precision: 38
    t.integer  "estado_civil_id",   limit: nil, precision: 38
    t.integer  "tipo_documento_id", limit: nil, precision: 38
    t.datetime "created_at",                                   null: false
    t.datetime "updated_at",                                   null: false
  end

  add_index "estudiantes", ["departamento_id"], name: "i_estudiantes_departamento_id"
  add_index "estudiantes", ["estado_civil_id"], name: "i_estudiantes_estado_civil_id"
  add_index "estudiantes", ["municipio_id"], name: "i_estudiantes_municipio_id"
  add_index "estudiantes", ["pais_id"], name: "index_estudiantes_on_pais_id"
  add_index "estudiantes", ["tipo_documento_id"], name: "i_est_tip_doc_id"

  create_table "lugar_nacimientos", force: true do |t|
    t.string   "nombre_departamento"
    t.string   "nombre_municipio"
    t.string   "nombre_centro_poblado"
    t.string   "nombre"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "municipios", force: true do |t|
    t.string   "nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pais", force: true do |t|
    t.string   "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "roles", force: true do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tipo_documentos", force: true do |t|
    t.string   "nombre"
    t.string   "sigla"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "nombre"
    t.string   "mail"
    t.datetime "created_at",                                                     null: false
    t.datetime "updated_at",                                                     null: false
    t.string   "email",                                             default: "", null: false
    t.string   "encrypted_password",                                default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: nil, precision: 38, default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size",       limit: nil, precision: 38
    t.datetime "avatar_updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "i_users_reset_password_token", unique: true

  add_foreign_key "assignments", "roles", name: "assignments_role_id_fk"
  add_foreign_key "assignments", "users", name: "assignments_user_id_fk"

end
